# RawTrampis Pro — Release History

This changelog records the project’s user-visible changes from v1.0.0 through v4.6.0. The headings use Geode-supported color tags so important fixes and updates are easy to scan.

## v4.6.0 — Theme switching and layout persistence

**A focused reliability release for theme changes, panel layout, and project licensing.**

### <c-40e34a>FIXED</c> Theme switching
- Fixed the ImGui context refresh that made the interface collapse into a single narrow column after a theme or font reload.
- Reapplied each tab panel’s saved on-screen position after the new ImGui context is created, while preserving the selected theme and animations.
- Kept regular user dragging native to ImGui; position restoration is a one-frame operation after context creation, not a per-frame lock.

### <c-40e34a>FIXED</c> Persistent panel positions
- Save each tab’s position as soon as a drag finishes, so an unexpected game exit or restart no longer discards the most recent arrangement.
- Track ImGui’s actual window movement and synchronize it with the animation position, including drags that continue just beyond the panel edge.

### <c-4aa3df>UPDATED</c> Description and changelog
- Expanded the description with the updated theme refresh behavior, panel-position persistence, and the complete navigation and customization overview.
- Reorganized the release notes with clear, color-coded FIXED and UPDATED headings while preserving the v1–v4.5 history.

### <c-4aa3df>UPDATED</c> Licensing notice
- Added the RawTrampis License notice for project-owned original contributions and assets.
- Kept the complete EPL-2.0 text in `LICENSE-EPL-2.0.md` for Eclipse-derived code and documented the license boundaries in `LICENSE.md`.

---

## v4.5.0 — Interface stability and polish

### <c-40e34a>FIXED</c> Window movement and blur
- Restored title-bar dragging without overriding ImGui’s normal movement between animation frames.
- Synchronized saved panel positions with live movement and clamped bottom-edge size constraints to a valid minimum.
- Fixed renderer changes resetting blur from an unset temporary value; blur now follows the theme preference and is disabled safely on unsupported renderers.

### <c-40e34a>FIXED</c> Theme picker
- Added large-list popup behavior and scale-aware bounds for a more reliable scrollable theme list.
- Kept side-by-side main and accent previews in MegaHack-inspired palette order.

### <c-4aa3df>UPDATED</c> Mod information
- Expanded the description with navigation, themes, search, profiles, keybinds, practice behavior, and compatibility notes.

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
