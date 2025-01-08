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
 bash configuration/lxdeconfig.sh