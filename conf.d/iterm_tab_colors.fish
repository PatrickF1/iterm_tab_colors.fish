# run function that changes tab color on every shell start unless not interactive
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
