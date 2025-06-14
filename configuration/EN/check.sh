first_time_check(){
    read -p "Is this your first time running the setup? (Y/n) " answer

    if [[ "$answer" == "y" || "$answer" == "Y" || -z "$answer" ]]; then
        select_os
    else
        bash configuration/EN/xsdlcheck.sh
    fi
}

select_os(){
    read -p 'Which OS are you using?
             1. Arch
             2. Ubuntu
             Please enter the number: ' answer

    if [[ "$answer" == "1" ]]; then
        bash configuration/arch.sh
    elif [[ "$answer" == "2" ]]; then
        bash configuration/ubuntu.sh
    else
        echo "Invalid input, please try again."
        sleep 2
        clear
        select_os
    fi
}

first_time_check