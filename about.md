# RawTrampis Pro v4.2.0

RawTrampis is Trampis's Geometry Dash toolkit, with an animated multi-panel interface adapted into a blue RawTrampis theme. This build provides a broad set of configurable gameplay, practice, and display tools under the RawTrampis name. The menu opens and closes with **Ctrl+N** by default; the binding can be changed in **Keybinds**.

## Tabs and controls

Tabs are organized in this order: **Global, Level, Bypass, Player, Bot, Creator, Labels, Shortcuts, Keybinds, Interface, Recorder**. Their feature implementations and per-feature settings remain in the original categories. The interface supports searchable settings, independent windows, panel movement and resizing, theme selection, blur, layout and scale controls, keybinds, and animated panel transitions. **RawTrampis Blue** is the default theme; the included theme collection can also be selected in Interface.

Global contains performance, timing, audio, cursor, and telemetry controls. Level contains practice, start-position, completion, hitbox, trigger, pause, and visual options. Bypass contains its category-specific gameplay and progression controls. Player includes **Noclip** plus player, trail, input, movement, and respawn features. Bot and Recorder contain practice automation and recording tools. Creator covers editor workflows. Labels provides configurable on-screen information and the cheat indicator. Shortcuts, Keybinds, and Interface expose their respective utility and presentation options.

Noclip is disabled by default and retains its player selection, optional thresholds, tint, opacity, and keybind configuration. The cheat indicator is separately configurable under Labels and remains opt-in. Individual module toggles and settings are saved through Geode's configuration system.

## Compatibility and safe use

The package targets Geometry Dash **2.2081** and Geode **5.11.2**. Some modules alter gameplay, timing, progression, or online-facing behavior, and assisted runs may not qualify for leaderboards or records. Optional integrations include Globed support and the FFmpeg API for recording. The Windows-only shortcut that loads an arbitrary user-selected DLL was intentionally omitted because it executes external code inside the game process; the included feature set remains available.
