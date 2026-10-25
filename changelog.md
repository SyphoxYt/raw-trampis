# RawTrampis Pro — Release History

This changelog records the project’s user-visible changes from the v1 releases through v4.5.0. Older entries summarize the changes made during those release lines.

## v4.5.0 — Interface stability and polish

### <c-40e34a>FIXED</c> Window movement
- Restored title-bar dragging by allowing ImGui to own a panel’s position between animation frames.
- Synchronized the saved position with the live window position while dragging, so panels no longer snap back or jump on the next animation.
- Kept animated open/close transitions while preventing their position updates from overriding user movement.
- Clamped the available panel height to a valid minimum near the bottom edge of the screen, avoiding invalid size constraints.

### <c-40e34a>FIXED</c> Blur state
- Fixed renderer changes resetting blur from a temporary setting that could be unset even when the selected theme enabled blur.
- Blur now follows the active theme’s saved preference and is disabled safely for renderers that do not support the desktop ImGui blur path.
- Preserved the existing animated blur transition and theme-configured intensity.

### <c-40e34a>FIXED</c> Theme picker
- Applied explicit large-list combo behavior so theme choices have a predictable scrollable popup.
- Added scaled minimum and maximum popup bounds, improving the first-open layout on different UI scales and resolutions.
- Kept the two palette swatches visible beside each theme name and retained the MegaHack-inspired ordering.

### <c-4aa3df>UPDATED</c> Description and release notes
- Expanded the mod description with navigation, dragging, search, themes, blur support, profiles, keybind capture, categories, practice behavior, and compatibility details.
- Added this release’s fixes using Geode-supported inline color tags so each FIXED/UPDATED label is easy to scan.

## v4.4.0

### <c-40e34a>FIXED</c> Themes and interface
- Rebuilt the theme selector with scale-aware sizing, wider readable rows, extra spacing, a scrollable list, and paired main/background and accent color swatches.
- Added the 15 MegaHack-inspired palette names shown in the reference: Nona, Nona Lux, Octavus, Septima, Sextus, Festive, Genesis, Catppuccin, Mint, Purple Rain, Platypus, Barbie, Navy, Cyanish, and 7up. Existing RawTrampis and bundled themes remain available.
- Fixed tab panels snapping back after being dragged. Panels now keep their positions, and automatic layout runs only when creating a fresh layout.
- Improved window position synchronization so ImGui animations and direct dragging use the same position.

### <c-4aa3df>UPDATED</c> Metadata
- Updated the Geode changelog and expanded the theme and interface notes in the mod description.

## v4.3.0

- Search highlights matching controls and dims unrelated controls without hiding the rest of the layout.
- Added profile name, save, and load controls to RawTrampis. Profile names are restricted to safe filename characters, and loading applies registered feature callbacks.
- Improved feature keybind management with the currently assigned key, distinct Change and Remove actions, and visible assignment confirmation.
- Reworked the theme dropdown with larger spaced rows and accent-color previews; added Arctic, Cyber, and Sunset palettes.
- Updated the RawTrampis branding text to “RawTrampis Pro | Version 4.3” and expanded the description.

## v4.2.0

- Repaired theme switching so it preserves the active renderer, layout, and tab navigation.
- Restored search across feature names, descriptions, and IDs; added search autofocus, Clear Search, and Reset Theme controls.
- Added higher-contrast palette options and enabled background blur in bundled themes where supported.
- Refined the RawTrampis home tab and corrected its localized title.

## v4.1.0

- Expanded the pro toolkit into Global, Level, Player, Bot, Creator, Labels, Shortcuts, Keybinds, Interface, and Internal Recorder categories.
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
