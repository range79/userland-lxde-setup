while true; do
    read -p "Have you installed the Xserver XSDL app? (Y/n): " answer
    if [[ "$answer" == "y" || "$answer" == "Y" || -z "$answer" ]]; then
        # If user answered "Y", exit the loop
        break
    else
        echo "Please install the Xserver XSDL app. (on your ph0ne)"
        sleep 4
    fi
done
bash configuration/EN/lxdeconfig.sh
