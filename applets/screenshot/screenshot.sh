options=" Area\n Screen\n Window"
output=$(printf "${options}" | fuzzel --dmenu --lines 3 -p "󱣵 ")

case "$output" in 
    " Area")
        niri msg action screenshot
        ;;
    " Screen")
        niri msg action screenshot-screen
        ;;
    " Window")
        niri msg action screenshot-window
        ;;
    *)
        ;;
esac
