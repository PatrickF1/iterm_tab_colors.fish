# run function that changes tab color on every shell start unless not interactive
if status --is-interactive
    __differentiate_tab_colors
end
