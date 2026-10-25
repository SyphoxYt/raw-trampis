# RawTrampis Pro v4.0.0

RawTrampis is Trampis's Geometry Dash toolkit, with the Eclipse Menu source and its established animated multi-panel interface adapted into a blue RawTrampis theme. This build replaces the earlier RawTrampis-only feature set with Eclipse's category structure and module implementations while retaining RawTrampis branding and the existing icon. The menu opens and closes with **Ctrl+N** by default; the binding can be changed in **Keybinds**.

## Tabs and controls

Tabs use Eclipse's original order: **Global, Level, Bypass, Player, Bot, Creator, Labels, Shortcuts, Keybinds, Interface, Recorder**. Their feature implementations and per-feature settings remain in the original categories. The interface supports searchable settings, independent windows, panel movement and resizing, theme selection, blur, layout and scale controls, keybinds, and the source menu's animated panel transitions. **RawTrampis Blue** is the default theme; the included Eclipse theme collection can also be selected in Interface.

Global contains performance, timing, audio, cursor, and telemetry controls. Level contains practice, start-position, completion, hitbox, trigger, pause, and visual options. Bypass keeps the corresponding Eclipse category and controls. Player includes **Noclip** plus player, trail, input, movement, and respawn features. Bot and Recorder contain practice automation and recording tools. Creator covers editor workflows. Labels provides configurable on-screen information and the cheat indicator. Shortcuts, Keybinds, and Interface expose their respective utility and presentation options.

Noclip is disabled by default and retains its player selection, optional thresholds, tint, opacity, and keybind configuration. The cheat indicator is separately configurable under Labels and remains opt-in. Individual module toggles and settings are saved through Geode's configuration system.

## Compatibility and safe use

The package targets Geometry Dash **2.2081** and Geode **5.11.2**. Some modules alter gameplay, timing, progression, or online-facing behavior, and assisted runs may not qualify for leaderboards or records. Optional integrations include Globed support and the FFmpeg API for recording. The Windows-only shortcut that loads an arbitrary user-selected DLL was intentionally omitted because it executes external code inside the game process; other Eclipse modules remain included.

## Credits

Based on Eclipse Menu source code, with upstream attribution and the **Eclipse Public License 2.0** retained in `LICENSE.md`. Upstream source: https://github.com/EclipseMenu/EclipseMenu. RawTrampis name, icon, and blue theme are maintained by Trampis.
