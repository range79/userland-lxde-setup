langcheck() {
    while true; do
        echo "Please select your language / Lütfen dilinizi seçin:"
        read -p "(T)urkish / (E)nglish: " dil
        case "$dil" in
            [Tt] )
                LANGUAGE="tr"
                break
                ;;
            [Ee] )
                LANGUAGE="en"
                break
                ;;
            * )
                echo "Please enter T or E only / Lütfen sadece T veya E giriniz."
                ;;
        esac
    done
}

main(){
    sh configuration/banner.sh
    langcheck

    if [[ "$LANGUAGE" == "tr" ]]; then
        sh configuration/TR/check.sh
    else
        sh configuration/EN/check.sh
    fi


}

main
