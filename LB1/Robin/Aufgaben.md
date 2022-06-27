## Aufgabe 1.1
Mit diesem Befel werden alle User angezeigt
`cat /etc/passwd` 

**Lösung**
`#!/bin/bash`
for user in $(cat userlist.txt); do useradd $user; done




## Aufgabe 




