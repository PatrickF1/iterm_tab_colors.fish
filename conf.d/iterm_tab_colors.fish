# Attempt to change tab color on every shell start unless not interactive.
# Putting this check here rather than in __differentiate_tab_colors so that
# - scripts won't change tab colors as a side effect, but
# - scripts can intentionally call __differentiate_tab_colors to change tab colors
if status --is-interactive
    __differentiate_tab_colors
end

function iterm_tab_colors_uninstall --on-event iterm_tab_colors_uninstall
    # __tab_color_index is the universal variable used to track which color to use
    # for the next tab
    set --erase __tab_color_index

    set_color --italics cyan
    echo "iterm_tab_colors.fish uninstalled"
    set_color normal
end
