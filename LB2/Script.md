## Hallo
### Unten können sie unser Script im Modul 122 sehen


#! /bin/bash

curl wttr.in/rapperswil?n1 |  grep "°C" | head -n 1 >wetter.txt

grep -o "[+-][0-9][0-9]" wetter.txt >wetter2.txt

Zahl=$(grep -o "[0-9][0-9]" wetter2.txt)

echo $Zahl

rm rapperswil.png

wget wttr.in/rapperswil.png


if [ $Zahl -gt 30 ]; then

    echo "Hallo Robin, heute wird es Heiss!!! (Über 30 Crad). Zieh dich doch so an,  so dass du nicht heiss hast. Ich würde dir kurze Hosen und ein T-shirt empfehlen. Gruss von deinem Wetterdienst" | mail -s "Zustellung heutiger Wetterbericht" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

    mpack -s "Wetterbericht dieser Woche" rapperswil.png robinruegg69@gmail.com

elif [ $Zahl -gt 20 ]; then

    echo "Hallo Robin, heute wird es warm (20-30 Crad). Zieh dich doch so an,  so dass du nicht schwitzt. Gruss von deinem Wetterdienst" | mail -s "Zustellung heutiger Wetterbericht" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

    mpack -s "Wetterbericht dieser Woche" rapperswil.png robinruegg69@gmail.com

elif [ $Zahl -gt 10 ]; then

    echo "Hallo Robin, heute wird es kühl (10-20 Crad). Zieh dir doch ein Pulli und evtl. lange Hosen an, so dass du nicht frierst. Gruss von deinem Wetterdienst" | mail -s "Zustellung heutiger Wetterbericht" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

    mpack -s "Wetterbericht dieser Woche" rapperswil.png robinruegg69@gmail.com

elif [ $Zahl -gt 0 ]; then

    echo "Hallo Robin, heute wird es kalt (0-10 Crad). Zieh dir doch etwas warmes an, so dass du nicht frierst. Gruss von deinem Wetterdienst" | mail -s "Zustellung heutiger Wetterbericht" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

    mpack -s "Wetterbericht dieser Woche" rapperswil.png robinruegg69@gmail.com

fi