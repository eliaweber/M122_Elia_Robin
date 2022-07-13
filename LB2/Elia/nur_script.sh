#! /bin/bash

curl wttr.in/rapperswil?n1 |  grep "°C" | head -n 1 >wetter.txt

grep -o "[m][0-9][0-9]" wetter.txt >wetter2.txt

Zahl=$(grep -o "[0-9][0-9]" wetter2.txt)

echo $Zahl

rm rapperswil.png

wget wttr.in/rapperswil.png


if [ $Zahl -gt 30 ]; then

    mpack -s "Wetterdienst" -d "30.txt" "rapperswil.png" eliaweber57@gmail.com


elif [ $Zahl -gt 20 ]; then

    mpack -s "Wetterdienst" -d "20.txt" "rapperswil.png" eliaweber57@gmail.com

elif [ $Zahl -gt 10 ]; then

    mpack -s "Wetterdienst" -d "10.txt" "rapperswil.png" eliaweber57@gmail.com

elif [ $Zahl -gt 0 ]; then

    mpack -s "Wetterdienst" -d "0.txt" "rapperswil.png" eliaweber57@gmail.com

fi
