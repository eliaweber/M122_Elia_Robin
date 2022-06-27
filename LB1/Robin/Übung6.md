## A
**Erzeugen Sie eine Textdatei mit folgendem Inhalt**
cat << END > datei.txt
a
b
c
d
e
END

## B
**Die Ausführung von ls -z erzeugt einen Fehler (da es die Option -z nicht gibt).**
**Starten Sie ls mit -z und leiten Sie die Fehler in eine Datei /root/errorsLs.log um.**
`ls -z 2> /root/errorsLs.log`

## C
**erzeugen Sie eine kl. Textdatei und füllen Sie diese mit Inhalt.** 
**Geben Sie die Textdatei mit cat aus und leiten Sie die Ausgabe wieder in eine neue Datei um. Benutzen Sie einmal > und einmal >> (mehrmals****hintereinander). Untersuchen Sie die beiden Situationen, indem Sie jedesmal den Inhalt der Datei wieder ausgeben.**
**Was pasSiert wenn Sie in dieselbe Datei umleiten wollen?**
echo "sdfonsdodsf" > datei.txt
cat datei.txt > datei2.txt
cat datei.txt > datei2.txt
cat datei2.txt
cat datei.txt >> datei2.txt
cat datei.txt >> datei2.txt
cat datei2.txt
 
`Unterschied: >> hängt Inhalt an, > überschreibt Inhalt`


## D
Leiten Sie die Ausgabe von whoami in die Datei info.txt um
`whoami > info.txt`

## E
Hängen Sie die Ausgabe von id an die Datei info.txt an
`id >> info.txt`

## F
Leiten Sie die Datei info.txt als Eingabe an das Programm wc um und zählen
Sie damit die Wörter (-w)
`cat info-txt | wc -w`
