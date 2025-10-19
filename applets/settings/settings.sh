options=" Logout\n Sleep\n Shutdown\n Reboot\n Hibernate"
output=$(printf "${options}" | fuzzel --dmenu --lines 5)

case "$output" in 
    " Logout")
        niri msg action quit
        ;;
    " Sleep")
        systemctl suspend
        ;;
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Hibernate")
        systemctl hibernate
        ;;
    *)
        ;;
esac
