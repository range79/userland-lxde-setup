    while true; do

        read -p "DISPLAY numarasini girin (ornek: x.x.x.x:x formatında): " DISPLAY_NUMBER



        echo "LXDE baslatiliyor, DISPLAY: $DISPLAY_NUMBER"


        export DISPLAY=$DISPLAY_NUMBER
        export PULSE_SERVER=tcp:127.0.0.1:4713

        # lxdeyi baslat
        if startlxde; then
            echo "LXDE basariyla baslatildi."
      
        else
            echo "LXDE baslatilirken hata olustu. Lutfen yeni değerler giriniz."
        fi
    done
