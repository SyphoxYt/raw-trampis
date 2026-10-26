#pragma once

namespace eclipse::gui::imgui {

    enum class LayoutMode {
        Tabbed,
        Panel,
        Sidebar
    };

    /// @brief Base class for ImGui window layouts
    class Layout {
    public:
        virtual ~Layout() = default;

        virtual void init() = 0;
        virtual void draw() = 0;
        virtual void toggle(bool state) = 0;

        // Called whenever the ImGui context is created again (for example
        // after a font/theme reload) so layouts can restore persistent state.
        virtual void restoreWindowPositions() {}

        // this function should return true as long as you want the layout to stay visible
        // after the menu has been toggled off
        [[nodiscard]] virtual bool wantStayVisible() const { return false; }

        [[nodiscard]] LayoutMode getMode() const { return m_mode; }
        [[nodiscard]] bool canForceKeyboardFocus() const { return m_canForceKeyboardFocus; }

    protected:
        LayoutMode m_mode = LayoutMode::Tabbed;
        bool m_canForceKeyboardFocus = false;
    };

}
