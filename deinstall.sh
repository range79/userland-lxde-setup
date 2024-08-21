PORT_NUMBER=""
display_banner() {
    clear
    cat << "EOF"
------------------------------------
|                                  |
|            🅓🅔🅘🅝🅢🅣🅐🅛🅛🅔🅡           | 
|              v1.1.0                |
|             𝐫𝐚𝐧𝐠𝐞𝟕𝟗              |
|                                  |
|                                  |
|                                  | 
------------------------------------        
EOF
}


main(){
    display_banner
    update
    xserver_xsdl_dwnld_chk
    configure_and_start_lxde

}

update(){
 sudo apt update
 sudo apt upgrade -y
}
xserver_xsdl_dwnld_chk() {
    while true; do
        read -p "Xserver XSDL uygulamasını indirdiniz mi? (E/h): " cevap
        if [[ "$cevap" == "e" || "$cevap" == "E" ]]; then
            # Kullanıcı "E" veya "e" olarak yanıtladıysa döngüden çık
            break
        else
            echo "Xserver XSDL uygulamasını indiriniz."
            sleep 4
        fi
    done
}



configure_and_start_lxde() {

    sudo apt install -y lxde

    while true; do

        read -p "DISPLAY numarasini girin (ornek: :0): " DISPLAY_NUMBER

 
        read -p "Port numarasini girin: " PORT_NUMBER


        if ! [[ "$PORT_NUMBER" =~ ^[0-9]+$ ]] || [ "$PORT_NUMBER" -lt 1 ] || [ "$PORT_NUMBER" -gt 65535 ]; then
            echo "Girdiginiz port numarasi geçersiz. 1 ile 65535 arasinda bir port numarasi giriniz."
            continue
        fi

        echo "LXDE baslatiliyor, DISPLAY: $DISPLAY_NUMBER, Port numarasi: $PORT_NUMBER..."


        export DISPLAY=$DISPLAY_NUMBER
        export PULSE_SERVER=tcp:127.0.0.1:$PORT_NUMBER

        # Start LXDE and handle errors
        if startlxde; then
            echo "LXDE basariyla baslatildi."
            exit 0
        else
            echo "LXDE baslatilirken hata olustu. Lutfen yeni değerler giriniz."
        fi
    done
}


main





