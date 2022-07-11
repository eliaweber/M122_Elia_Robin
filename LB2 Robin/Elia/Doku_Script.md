```
#! /bin/bash
```
Das # am Anfang der Zeile bedeutet, dass diese Zeile ein Kommentar ist. Die Zeile wird also nicht ausgeführt. Das "#!" zusammen nennt sich Shebang oder Magic Line. Unter Unix-Systemen gibt man damit an, dass das Skript mit dem angegebenen Programm beziehungsweise Interpreter (in diesem Fall "/bin/bash") aufgerufen werden soll. Statt "/bin/bash" sind auch noch andere Aufrufe wie "/bin/sh" oder "/bin/dash" möglich, um das Skript mit einem anderen Interpreter auszuführen (der dann andere Funktionen unterstützen kann), aber das würde hier wohl zu weit gehen.
```
curl wttr.in/rapperswil?n1 |  grep "°C" | head -n 1 >wetter.txt 
```
Mit Curl bezieht man Infos aus einer Website, mit dem Grep Befehl in Kombo mit dem head -n 1 Befehl nimmt man die erste Zeile von oben, in welcher °C vorkommt. Dies wird dann in wetter.txt gespeichert
```
grep -o "[m][0-9][0-9]" wetter.txt >wetter2.txt
```
Aus dem wetter.txt file werden die 3 Ziffen ausgeschnitten und in Wetter2.txt gespeichert. Die Erste Ziffer muss m sein. Dies ist immer vor der Grad Celsius im wetter.txt. Danach kann eine Ziffer von 0-9 folgen, 2 mal. Da es 2 Ziffern braucht, lassen wir unser Script nur im Sommer laufen, dass es keine Fehler gibt. Im Winter ist es ja sowieso kalt.
```
Zahl=$(grep -o "[0-9][0-9]" wetter2.txt)
```
Aus dem File Wetter2.txt nehmen wir erneut 2 Ziffern. Dieses sind wieder von 0-9 so schneiden wir das vorher erwähnte "m" ab. Dies speicher wir dann in die Variabel "Zahl"
```
echo $Zahl
```
Variabel "Zahl" ausgebgebn zum überprüfen
```
rm rapperswil.png
```
Das Bild was noch im Verzeichnis ist Löschen, sodass es nicht doppelt entsteht.
```
wget wttr.in/rapperswil.png
```
Screenshot des Aktuellen Wetter holen und rapperswil.png benennen
```
if [ $Zahl -gt 30 ]; then
```
If Statement beginn (Grösste Zahl zuerst, so läuft es schön durch). Wenn Zahl Grösser als 30 ->
```
mpack -s "Wetterdienst" -d "30.txt" "rapperswil.png" eliaweber57@gmail.com
```
Email mit dem Betreff Wetterdients dem Text aus dem 30.txt File (File mit vorbereitetem Text, so ist das Script kleiner) und rapperswil.png an eliaweber57@gmail.com schiken
```
elif [ $Zahl -gt 20 ]; then
```
sonst, wenn zahl grösser als 20 ->
```
mpack -s "Wetterdienst" -d "20.txt" "rapperswil.png" eliaweber57@gmail.com
```
Email mit dem Betreff Wetterdients dem Text aus dem 20.txt File (File mit vorbereitetem Text, so ist das Script kleiner) und rapperswil.png an eliaweber57@gmail.com schiken
```
elif [ $Zahl -gt 10 ]; then
```
sonst, wenn Zahl grösser als 10 ->
```
mpack -s "Wetterdienst" -d "10.txt" "rapperswil.png" eliaweber57@gmail.com
```
Email mit dem Betreff Wetterdients dem Text aus dem 20.txt File (File mit vorbereitetem Text, so ist das Script kleiner) und rapperswil.png an eliaweber57@gmail.com schiken
```
elif [ $Zahl -gt 0 ]; then
```
Sonst, wenn Zahl grösser als 0 ->
```
mpack -s "Wetterdienst" -d "0.txt" "rapperswil.png" eliaweber57@gmail.com
```
Email mit dem Betreff Wetterdients dem Text aus dem 0.txt File (File mit vorbereitetem Text, so ist das Script kleiner) und rapperswil.png an eliaweber57@gmail.com schiken
```
fi
```
If Statement mit "fi" beenden