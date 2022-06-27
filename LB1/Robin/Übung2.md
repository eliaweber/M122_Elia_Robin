## Lösen Sie folgende Übungen der Reihe nach (Verwenden Sie soviele Wildcards
## und/oder Braces wie nur irgendwie möglich! ):


Erzeugen Sie ein Verzeichnis Docs in ihrem Heimverzeichnis
- mkdir ~/Docs

Erstellen Sie die Dateien file1 bis file10 mit touch im Docs Verzeichnis
- touch ~/Docs/file{1..10}

Löschen Sie alle Dateien, welche einer 1 im Dateinamen haben
- rm -f ~/Docs/file1*

Löschen Sie file2, file4, file7 mit einem Befehl
- rm -f ~/Docs/file[247]

Löschen Sie alle restlichen Dateien auf einmal
- rm -f ~/Docs/* oder rm -f ~/Docs/file*

Erzeugen Sie ein Verzeichnis Files in ihrem Heimverzeichnis
- mkdir Files, cd Files

Erstellen Sie die Dateien file1 bis file10 mit touch im Files Verzeichnis
- touch file{1..10} (Erzeugt fileX von 1 bis 10)

Kopieren Sie das Verzeichnis Files mitsamt Inhalt nach Files2
- cd .. , cp -R Files Files2

Kopieren Sie das Verzeichnis Files mitsamt Inhalt nach Files2/Files3
- cp -R Files Files2/Files3

Benennen Sie das Verzeichnis Files in Files1 um
- mv Files Files1

Löschen Sie alle erstellten Verzeichnisse und Dateien wieder
- rm -f *



















Übung 3 - 