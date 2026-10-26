# RawTrampis Pro v4.6.0

RawTrampis Pro is Trampis’s Geometry Dash 2.2081 / Geode 5.11.2 practice, gameplay, and interface toolkit. It includes a searchable, animated multi-panel menu, configurable feature settings, multiple visual themes, and saved panel layouts.

## Open and arrange the menu

Press **Ctrl+N** to open or close the menu; change the shortcut in **Keybinds**. In the tabbed layout, drag a panel by its title bar to move it. The new position is saved when the drag ends and restored after theme or font refreshes and at the next launch. Panels have independent scroll areas. Use each supported feature’s settings arrow for its detailed options.

Search across feature titles, descriptions, and IDs. Matches are highlighted while other controls are dimmed. Clear Search returns to the full view.

## Themes and appearance

Choose a theme from the RawTrampis tab. The scrollable theme picker shows both main and accent colors. Theme changes preserve the current layout and panel positions; after a font-rendering context refresh, the menu restores each panel instead of stacking them together. Interface options include font, scale, spacing, panel animations, and background blur. Blur is supported by the desktop ImGui renderer; other renderer and platform combinations disable it safely.

## Categories

The menu organizes tools into Global, Level, Bypass, Player, Bot, Creator, Labels, Shortcuts, Keybinds, Interface, and Recorder. Categories group gameplay and audio controls, practice helpers, player tools, editor workflows, on-screen status, shortcuts, keybinds, and presentation settings.

**Noclip** is disabled by default and keeps ordinary platforms solid while handling hazards. The **cheat indicator** is independently configurable and opt-in. Supported features expose relevant controls such as keybinds, thresholds, modes, and display behavior. Saved configuration profiles let you keep separate practice or recording setups.

## Compatibility and use

The package targets Geometry Dash **2.2081** and Geode **5.11.2**. Optional integrations include Globed and the FFmpeg API for recording. Gameplay tools can change movement, timing, or progression; use them where permitted and do not assume assisted attempts qualify for records or leaderboards.

The Windows shortcut for loading an arbitrary DLL is intentionally omitted because it would execute external code inside the game process.

## License notices

The RawTrampis License applies to project-owned original contributions and branding materials. Eclipse-derived source remains under EPL-2.0, and other third-party components remain under their own licenses. See [LICENSE.md](LICENSE.md), [LICENSE-EPL-2.0.md](LICENSE-EPL-2.0.md), and `resources/Licenses/`.
