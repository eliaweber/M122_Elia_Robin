## Übung A
Alle Zeilen, welche obelix enthalten
- cat file.txt | grep obelix

Alle Zeilen, welche 2 enthalten
- cat file.txt | grep 2

Alle Zeilen, welche ein e enthalten
- cat file.txt | grep e

Alle Zeilen, welche nicht gamma enthalten
- cat file.txt | grep -v gamma

Alle Zeilen, welche 1, 2 oder 3 enthalten (benutzen Sie -E und eine regex)
- cat file.txt | grep -E "1|2|3"



## Übung B
Alle Begriffe vor dem ersten :-Zeichen
- cat file.txt | cut -d ':' -f 1

Alle Begriffe zwischen den beiden :-Zeichen
- cat file.txt | cut -d ':' -f 2

Alle Begriffe rechts des letzten :-Zeichen
- cat file.txt | cut -d ':' -f 3



