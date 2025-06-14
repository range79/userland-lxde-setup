yuklenmisse(){
    read -p "ilk kezmi kurulum yapiyorsunuz?(E/h)" cevap
      
        
        if [[ "$cevap" == "e" || "$cevap" == "E" ]]; then
        whichos
        
        else
          bash configuration/TR/xsdlcheck.sh
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
yuklenmisse