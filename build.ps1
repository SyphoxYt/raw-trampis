$ErrorActionPreference = "Stop"
$project = $PSScriptRoot
$root = Split-Path -Parent $project
$tools = Join-Path $root "tools"
$sdk = Join-Path $tools "GeodeSDK-clean"
$cli = Join-Path $tools "geode-cli\geode.exe"
$buildDir = Join-Path $project "build"
$cache = Join-Path (Join-Path $root "Raw-Trampis") ".cache\cpm"
$cmakeBin = Join-Path $tools "cmake-3.31.8\cmake-3.31.8-windows-x86_64\bin"
$ninjaBin = Join-Path $tools "ninja"
$llvmBin = Join-Path $tools "llvm-23.1.4\bin"
$gitPaths = @((Join-Path $tools "git-portable-full\cmd"), (Join-Path $tools "git-portable-full\ucrt64\bin"), (Join-Path $tools "git-portable-full\usr\bin"))

if (-not (Test-Path (Join-Path $sdk "CMakeLists.txt"))) { throw "Geode SDK is missing at $sdk" }
if (-not (Test-Path $cli)) { throw "Geode CLI is missing at $cli" }

$pathEntries = @($cmakeBin, $ninjaBin, $llvmBin, (Join-Path $tools "geode-cli")) + $gitPaths + @($env:PATH)
$env:PATH = (($pathEntries | Where-Object { $_ } | Select-Object -Unique) -join ";")
$env:GEODE_SDK = $sdk
$env:CPM_SOURCE_CACHE = $cache
Remove-Item Env:ECLIPSE_TRANSLATIONS_REPO_PATH -ErrorAction SilentlyContinue
$env:GIT_EXEC_PATH = Join-Path $tools "git-portable-full\ucrt64\libexec\git-core"
$vswhere = Join-Path ${env:ProgramFiles(x86)} "Microsoft Visual Studio\Installer\vswhere.exe"
if (-not (Test-Path $vswhere)) { throw "Visual Studio Build Tools are missing. Install the C++ workload and Windows SDK first." }
$vsInstall = & $vswhere -latest -products '*' -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
if (-not $vsInstall) { throw "No Visual Studio C++ toolchain was found." }
$devCmd = Join-Path $vsInstall "Common7\Tools\VsDevCmd.bat"
if (-not (Test-Path $devCmd)) { throw "Visual Studio developer environment script is missing at $devCmd" }
$devCommand = "call `"$devCmd`" -no_logo -arch=x64 -host_arch=x64 >nul && set"
$devVars = & $env:ComSpec /d /c $devCommand
if ($LASTEXITCODE -ne 0) { throw "Could not initialize the Visual Studio C++ environment." }
foreach ($line in $devVars) {
    if ($line -match '^([^=]+)=(.*)$') { Set-Item -Path "Env:$($matches[1])" -Value $matches[2] }
}

# The machine's registered Windows SDK has unreadable UM headers. Use the
# official Microsoft Windows SDK NuGet packages staged under tools instead.
$localSdk = Join-Path $tools "WindowsSDK-NuGet\c"
$localSdkVersion = "10.0.26100.0"
$localSdkInclude = Join-Path $localSdk "Include\$localSdkVersion"
if (-not (Test-Path (Join-Path $localSdkInclude "um\Windows.h"))) {
    throw "The staged Windows SDK headers are missing at $localSdkInclude"
}
$env:WindowsSdkDir = "$localSdk\"
$env:WindowsSDKVersion = "$localSdkVersion\"
$env:UniversalCRTSdkDir = "$localSdk\"
$env:UCRTVersion = "$localSdkVersion"
$env:INCLUDE = (@($env:INCLUDE, (Join-Path $localSdkInclude "ucrt"), (Join-Path $localSdkInclude "shared"), (Join-Path $localSdkInclude "um"), (Join-Path $localSdkInclude "winrt"), (Join-Path $localSdkInclude "cppwinrt")) | Where-Object { $_ }) -join ";"
$env:LIB = (@($env:LIB, (Join-Path $localSdk "ucrt\x64"), (Join-Path $localSdk "um\x64")) | Where-Object { $_ }) -join ";"

$cmakeCmd = Get-Command cmake -ErrorAction SilentlyContinue
$ninjaCmd = Get-Command ninja -ErrorAction SilentlyContinue
$clangCmd = Get-Command clang-cl -ErrorAction SilentlyContinue
$gitCmd = Get-Command git -ErrorAction SilentlyContinue
if (-not $cmakeCmd) { throw "CMake 3.29 or newer is required." }
if (-not $ninjaCmd) { throw "Ninja is required." }
if (-not $clangCmd) { throw "LLVM clang-cl is required." }
if (-not $gitCmd) { throw "Git is required." }
if (-not (Test-Path (Join-Path $env:WindowsSdkDir "Include"))) { throw "The Windows SDK headers were not found. Install the Windows 10/11 SDK through Visual Studio Build Tools." }
New-Item -ItemType Directory -Force -Path $cache | Out-Null

cmake -S $project -B $buildDir -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_MAKE_PROGRAM="$($ninjaCmd.Source)" -DCMAKE_C_COMPILER="$($clangCmd.Source)" -DCMAKE_CXX_COMPILER="$($clangCmd.Source)"
if ($LASTEXITCODE -ne 0) { throw "CMake configure failed with exit code $LASTEXITCODE" }
cmake --build $buildDir --target RawTrampis_PACKAGE --parallel 2
if ($LASTEXITCODE -ne 0) { throw "Mod build/package failed with exit code $LASTEXITCODE" }

$package = Get-ChildItem $buildDir -Filter "rawtrampis.mod.geode" -Recurse | Select-Object -First 1
if (-not $package) { throw "Build completed but the .geode package was not found" }
Write-Host "Built RawTrampis: $($package.FullName)"
$releasePackage = Join-Path $project "rawtrampis.mod.geode"
Copy-Item -LiteralPath $package.FullName -Destination $releasePackage -Force
Write-Host "Updated release package: $releasePackage"


