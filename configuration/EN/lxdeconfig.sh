while true; do

    read -p "Enter the DISPLAY number (example: x.x.x.x:x format): " DISPLAY_NUMBER

    echo "Starting LXDE, DISPLAY: $DISPLAY_NUMBER"

    export DISPLAY=$DISPLAY_NUMBER
    export PULSE_SERVER=tcp:127.0.0.1:4713

    # start LXDE
    if startlxde; then
        echo "LXDE started successfully."
    else
        echo "Error occurred while starting LXDE. Please enter new values."
    fi
done
