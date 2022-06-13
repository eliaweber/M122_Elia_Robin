## Aufgabe 1.1
Mit diesem Befel werden alle User angezeigt
`lcat /etc/passwd`

**Lösung**
`#!/bin/bash`
for user in $(cat userlist.txt); do useradd $user; done


