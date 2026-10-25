# RawTrampis Pro — Release History

This changelog collects the RawTrampis release history from the first v1 release through the current v4 release line. Earlier versions were developed as iterative local builds, so entries below summarize the user-visible changes from those releases.

## v4.4.0

### Themes and interface
- Rebuilt the theme selector with scale-aware sizing, wider readable rows, extra spacing, a scrollable list, and side-by-side main/background and accent color swatches.
- Added the 15 MegaHack-inspired palette names shown in the reference: Nona, Nona Lux, Octavus, Septima, Sextus, Festive, Genesis, Catppuccin, Mint, Purple Rain, Platypus, Barbie, Navy, Cyanish, and 7up. Existing RawTrampis and bundled themes remain available.
- Fixed tab panels snapping back after being dragged. Panels now keep their positions, and automatic layout runs only when creating a fresh layout.
- Improved window position synchronization so ImGui animations and direct dragging use the same position.

### Metadata
- Updated the Geode changelog and expanded the theme and interface notes in the mod description.

## v4.3.0

- Search now highlights matching controls and dims unrelated controls without hiding the rest of the layout.
- Added profile name, save, and load controls to RawTrampis. Profile names are restricted to safe filename characters, and loading applies registered feature callbacks.
- Improved feature keybind management with the currently assigned key, distinct Change and Remove actions, and visible assignment confirmation.
- Reworked the theme dropdown with larger spaced rows and accent-color previews; added Arctic, Cyber, and Sunset palettes.
- Updated the RawTrampis branding text to “RawTrampis Pro | Version 4.3” and expanded the description.

## v4.2.0

- Repaired theme switching so it preserves the active renderer, layout, and tab navigation.
- Restored search across feature names, descriptions, and IDs; added search autofocus, Clear Search, and Reset Theme controls.
- Added higher-contrast palette options and enabled background blur in the bundled themes where supported.
- Refined the RawTrampis home tab and corrected its localized title.

## v4.1.0

- Expanded the pro toolkit layout into dedicated Global, Level, Player, Bot, Creator, Labels, Shortcuts, Keybinds, and Interface categories.
- Added configurable presentation options, theme persistence, smoother panel animations, and further feature-specific settings.
- Continued fixes to the optional cheat indicator, hazard-focused Noclip, and in-level UI behavior.

## v4.0.0

- Rebranded the project as RawTrampis Pro and introduced the fourth-generation interface and feature organization.
- Reworked the menu around movable category panels, a RawTrampis home tab, theme selection, search, and the Ctrl+N shortcut.
- Kept Noclip hazard-focused so ordinary platforms remain solid; made the cheat indicator optional and disabled by default.

## v3.0.0

- Replaced the early compact menu with a multi-category interface influenced by the project’s Nova and Eclipse development work.
- Added theme support, animated transitions, an optional top-right cheat indicator, per-feature settings, and configurable keybinds.
- Improved collision handling so Noclip targets hazards rather than all level geometry.

## v2.0.0

- Expanded beyond the initial Noclip and cheat-indicator tools with additional practice, status, display, and interface features.
- Added settings panels and custom keybind support for compatible features.
- Reworked the interface, corrected default states so cheats start disabled, and improved the cheat indicator’s appearance and behavior.

## v1.0.0

- First RawTrampis release for Geode and Geometry Dash.
- Introduced hazard-focused Noclip and an optional cheat indicator, both controllable through mod settings.
- Added the initial RawTrampis identity, configuration, and distributable `.geode` package.
