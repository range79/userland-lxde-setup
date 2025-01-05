PORT_NUMBER=""
display_banner() {
    clear
    cat << "EOF"
------------------------------------
|                                  |
|            🅓🅔🅘🅝🅢🅣🅐🅛🅛🅔🅡           | 
|              v1.2.0                |
|             𝐫𝐚𝐧𝐠𝐞𝟕𝟗              |
|                                  |
|                                  |
|                                  | 
------------------------------------        
EOF
}


main(){
    display_banner
    yuklenmisse
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
    configure_and_start_lxde
}



configure_and_start_lxde() {

  

    while true; do

        read -p "DISPLAY numarasini girin (ornek: x.x.x.x:x formatında): " DISPLAY_NUMBER



        echo "LXDE baslatiliyor, DISPLAY: $DISPLAY_NUMBER"


        export DISPLAY=$DISPLAY_NUMBER
        export PULSE_SERVER=tcp:127.0.0.1:4713

        # lxdeyi baslat
        if startlxde; then
            echo "LXDE basariyla baslatildi."
            exit 0
        else
            echo "LXDE baslatilirken hata olustu. Lutfen yeni değerler giriniz."
        fi
    done
}
yuklenmisse(){
    read -p "ilk kezmi kurulum yapiyorsunuz?(E/h)" cevap
      
        
        if [[ "$cevap" == "e" || "$cevap" == "E" ]]; then
           sudo apt update
           sudo apt upgrade -y
           sudo apt install -y lxde 
           xserver_xsdl_dwnld_chk
        else
          xserver_xsdl_dwnld_chk
        fi

}

main





