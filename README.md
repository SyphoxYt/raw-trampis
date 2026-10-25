# RawTrampis Pro

RawTrampis Pro v4.0.0 is a Geometry Dash 2.2081 / Geode 5.11.2 toolkit adapted from Eclipse Menu. It keeps Eclipse's native multi-panel menu, category order, feature implementations, feature options, keybind flow, theme system, and panel animations while using RawTrampis branding and the blue RawTrampis theme.

## Open the menu

Press **Ctrl+N** to toggle the interface. Change the menu key in **Keybinds**. Use the **Interface** tab to select a theme, adjust blur and scale, and control panel layout and animation preferences. Search the menu to find controls; panels can be moved, resized, and scrolled independently.

## Categories

1. Global
2. Level
3. Bypass
4. Player
5. Bot
6. Creator
7. Labels
8. Shortcuts
9. Keybinds
10. Interface
11. Recorder

Features keep their Eclipse category placement and original per-feature options. **Noclip** is under Player and defaults off. The cheat indicator is independently configurable in Labels. Do not assume an assisted run qualifies for records or leaderboards; several options change gameplay or progression.

Optional integrations are Globed and the FFmpeg API used by recording. The arbitrary DLL-loading shortcut from upstream is intentionally excluded because it can execute external code within Geometry Dash. The other Eclipse modules and theme assets are retained.

## Source and licensing

This project is based on Eclipse Menu. The Eclipse Public License 2.0 and upstream notices are retained in `LICENSE.md`; see https://github.com/EclipseMenu/EclipseMenu. RawTrampis branding, the existing logo, and RawTrampis Blue theme are by Trampis.
