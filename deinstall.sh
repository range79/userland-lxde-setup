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

yuklenmisse(){
    read -p "ilk kezmi kurulum yapiyorsunuz?(E/h)" cevap
      
        
        if [[ "$cevap" == "e" || "$cevap" == "E" ]]; then
        whichos
        
        else
          bash configuration/xsdlcheck.sh
        fi

}


whichos(){
    read -p 'hangi osu kulliyorsunuz
             1.arch
             2.ubuntu  '  cevap
    if [[ "$cevap" == "1" ]]; then
bash configuration/arch.sh
elif [[ "$cevap" == "2" ]]; then
bash configuration/ubuntu.sh
else {
    echo "yanlis karakter girdiniz"
    sleep 2 
    clear 
    whichos
}
fi

}

main(){
    display_banner
    yuklenmisse
}


main






