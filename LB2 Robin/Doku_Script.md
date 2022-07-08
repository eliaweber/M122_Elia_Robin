1. Das # am Anfang der Zeile bedeutet, dass diese Zeile ein Kommentar ist. Die Zeile wird also nicht ausgeführt. Das "#!" zusammen nennt sich Shebang oder Magic Line. Unter Unix-Systemen gibt man damit an, dass das Skript mit dem angegebenen Programm beziehungsweise Interpreter (in diesem Fall "/bin/bash") aufgerufen werden soll. Statt "/bin/bash" sind auch noch andere Aufrufe wie "/bin/sh" oder "/bin/dash" möglich, um das Skript mit einem anderen Interpreter auszuführen (der dann andere Funktionen unterstützen kann), aber das würde hier wohl zu weit gehen.
   
#! /bin/bash


2. In diesem Schritt werden die Daten bezogen. Mit dem Befehl curl wird dies surchgespielt. Der Befehl curl ermöglicht es Ihnen, Daten über die Befehlszeile unter Linux herunterzuladen und hochzuladen. In dem nächsten Schritt wird nur diese Zeile "ausgewählt",welche ein "C" hat (Temp). Zuletzt wird diese Zeile nochmals zugeschnitten und in das wetter.txt abgespeichert. 
   
curl wttr.in/rapperswil?n1 |  grep "°C" | head -n 1 >wetter.txt


3. Hier wird definiert man, dass man nur die Beiden Zahlen nach dem "m" haben will. Zuerst greift man auf wetter.txt zu und dann speichert man die neue Ausgabe in wetter2.txt ab. 
   
grep -o "[m][0-9][0-9]" wetter.txt >wetter2.txt


4. Nun geht es weiter mit dem ausschneiden. Mit dem nächsten Befehl, definiert man, dass man nur die Zahlen von 1-9 haben will und diese exportiert man dann in wetter2.txt. Nun haben wir mit dem wetter2.txt file nur noch die Tempratur in Zahlen. 
   
Zahl=$(grep -o "[0-9][0-9]" wetter2.txt)

5. Zahl ausgeben, um zu Kontrollieren. 
   
echo $Zahl

6. Bild rapperswil.png löschen

rm rapperswil.png

7. Bild Rapperswil.png wieder neu erstellen. 

wget wttr.in/rapperswil.png

8. Beginn des If/Elif statements. Erste Statement if. Dann Wird die Variabel mit der dahinterstehenden Zahl verglichen. -gt = grater than. Anschliessend kommt der Befehl, welcher ausgeführt wird, wenn die Variabel grösser als die dahinterstehende Zahl ist. In diesem Fall wird ein text an die e-mail robinruegg69@gmail.com gesendet und ein Bild geschikt. Mit mail -s kann man den Betreff des Mails festlegen und mit -a den Absender definieren. 

if [ $Zahl -gt 57 ]; then

    echo "WOW Robin, anscheinend ist heute ein neuer Hitzerekord entstanden. Der letzt Rekord wurde am Am 10. Juli 1913 im Death Valley gemessen und betrug 65,7 Crad " | mail -s "Neuer Hitzerekord!!!" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

	mpack -s "Woche mit dem Hitzerekord" rapperswil.png robinruegg69@gmail.com

elif [ $Zahl -gt 30 ]; then

    echo "Hallo Robin, heute wird es heiss!!! (Mehr als  30 Crad). Zieh dich doch so an,  so dass du nicht heiss hast. Ich empfehle dir kurze Hosen und ein T-shirt. Gruss von deinem Wetterdienst" | mail -s "Zustellung heutiger Wetterbericht" -a "From: Wetterdienst Microhard <Wetterdienst>" robinruegg69@gmail.com

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

9. Mit diesem Befehl wird das If/elif statement beendet. 
10. Nun wird das script mit ./ ausgeführt.
fi
