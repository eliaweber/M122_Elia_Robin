#! /bin/bash
#elia weber m122 Script für das Zustellen eines Wetter Berichts 13.07.2022

#informationen von wttr.in/rapperswil holen und erste Zeile in der °C vorkommt in wetter.txt speichern
curl wttr.in/rapperswil?n1 |  grep "°C" | head -n 1 >wetter.txt

#die Temperatur aus wetter.txt nehmen und in wetter2.txt kopieren
grep -o "[m][0-9][0-9]" wetter.txt >wetter2.txt

#variabel Zahl mit Temperatur füllen
Zahl=$(grep -o "[0-9][0-9]" wetter2.txt)

echo $Zahl
#png löschen
rm rapperswil.png
#png erneut holen
wget wttr.in/rapperswil.png

#if statement, wenn Zahl grösser als 30 ist email senden
if [ $Zahl -gt 30 ]; then
    #-s subject, -d der Anhang und zum Schluss der Empfänger
    mpack -s "Wetterdienst" -d "30.txt" "rapperswil.png" eliaweber57@gmail.com

#elif statement, wenn Zahl grösser als 20 ist email senden
elif [ $Zahl -gt 20 ]; then
    #-s subject, -d der Anhang und zum Schluss der Empfänger
    mpack -s "Wetterdienst" -d "20.txt" "rapperswil.png" eliaweber57@gmail.com

#elif statement, wenn Zahl grösser als 10 ist email senden
elif [ $Zahl -gt 10 ]; then
    #-s subject, -d der Anhang und zum Schluss der Empfänger
    mpack -s "Wetterdienst" -d "10.txt" "rapperswil.png" eliaweber57@gmail.com

#elif statement, wenn Zahl grösser als 0 ist email senden
elif [ $Zahl -gt 0 ]; then
    #-s subject, -d der Anhang und zum Schluss der Empfänger
    mpack -s "Wetterdienst" -d "0.txt" "rapperswil.png" eliaweber57@gmail.com

fi
