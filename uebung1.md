# Dokumentation
## Von Robin und Elia

### Verzeichnis Linux

- Das Wurzelverzeichnis oder Stammverzeichnis genannte Verzeichnis ist die höchste Ebene der Verzeichnisstruktur. In diesem befinden sich alle Verzeichnisstrukturen des Betriebssystems einschließlich weiterer Speichermedien.
***

***/bin :: binaries (dt. Binärdateien/Programme)***
- Die wichtigsten Kommandos (Programme) die von Betriebssystem gebraucht werden wie cp, echo, mkdir oder rm befinden sich in diesem Verzeichnis. Sie haben alle gemeinsam, dass sie Binärdateien sind und von allen Benutzern ausgeführt werden dürfen. (/sbin nur fürs System/root)
***

***/dev :: devices (dt. Geräte)***
- Hier befinden sich Gerätedateien zur Ansteuerung von Hardware wie Festplatten, RAM, Bildschirm oder auch der Maus. Die Dateien stellen die Existenz der Treiber eines Gerätes dar und können auch leere Dateihülsen sein. Andere bieten konkrete Funktionalität an. Für jedes Hardwareteil gibt es vorsorglich einen solchen Eintrittspunkt, auch wenn dieser nicht zwingend benötigt wird.
***

***/etc :: et cetera (dt. „alles übrige“)***
- Dieser Ordner beinhaltet die meisten systemweit gültigen Konfigurationsdateien und stellt damit den zentralen Anlaufpunkt zum Verändern von Einstellungen dar.
***

***/home***
- In diesem Verzeichnis befinden sich standardmäßig die Heimatverzeichnisse der Nutzer. In diesen Ordnern können Benutzer ihre persönlichen Dateien und je nach Anwendung auch benutzerspezifische Konfigurationen ablegen.
***
  
***/lib :: libraries (dt. Bibliotheken)***
- Hier sind Funktionsbibliotheken des Systems wieder zu finden. Dies sind Bibliotheken, die bei dem Systemstart benötigt werden und, wenn der Kernel modular aufgebaut ist, die entsprechenden Kernel-Module.
***

***/opt :: optional***
- Hier werden alle Programme abgelegt, die nicht im Paketformat vorliegen (folglich händisch installiert und nicht durch Paketmanager verwaltet), wie auch viele kommerzielle Softwarepakete.
***
  
***/run***
- Dieser Ordner beherbergt Dateien von laufenden Prozessen. In diesem Ordner finden sich die meisten PID-Files (Process identifier).
***

***/sbin :: system binaries (dt. Systemprogramme)***
- In diesem Ordner findet man Programm Binärdateien wieder, die Root-Rechte zum Ausführen benötigen.
***
  
***/tmp :: temporary (temporär)***
- In diesem Verzeichnis können temporäre Daten abgelegt werden. Zu beachten ist, dass dieses Verzeichnis nach einem Neustart in der Regel bereinigt wird.
***
  
***/usr :: unix system resources (dt. UNIX Systemressourcen, NICHT USER)***
- Programme die nicht direkt für das Betriebssytemgebraucht werden sondern eher für die Benutzer, sind in diesem Ordner zu finden. Dabei enthält dieser Ordner weitere Unterordner, die sich thematisch gliedern.
***
  
***/usr/local***
- Als wichtiges Unterverzeichnis von /usr ist dieses Verzeichnis zu nennen. In diesem können Benutzer ihre eigenen Programme installieren. Das Verzeichnis ist wie /usr thematisch in Unterordner unterteilt.

***
  
***/var :: variable (dt. variabel)***
- In diesem Ordner sind variable Daten wie Logfiles, Mails oder auch Druckerspooler verortet. Es wird primär verwendet, auch nach der Einführung von /srv.
***

Test

Test


