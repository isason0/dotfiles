MENU=$(printf "Shut Down\nReboot\nLog Out\n" | dmenu -i)

if [[ $MENU = "Shut Down" ]]; then
    shutdown now
elif [[ $MENU = "Reboot" ]]; then
    reboot now
elif [[ $MENU = "Log Out" ]]; then
    logout
else
    echo "invalid input"
fi
