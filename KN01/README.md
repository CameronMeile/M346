#KN01 Virtualisierung

1. Überprüfen Sie zuerst wie viel Logische Prozessoren und RAM Ihr Host-System hat, also ihr
eigentliches Betriebssystem

### CPU Prozessoren
![Anzahl CPU Prozessoren](/KN01/Content/KN01%20-%20Anzahl%20Logischeprozessor.png)
### RAM Speicher
![Anzahl RAM speicher](Content/KN01%20-%20RAM%20Speicher.png)


2. Weisen Sie nun Ihrer VM, die Sie unter B) erstellt haben weniger Prozessoren zu, als Ihr HostSystem logische Prozessoren hat. Starten Sie die VM und rufen Sie in der Console den Befehl 
lscpu | grep "CPU(s)" auf. (Screenshot für Abgabe nicht vergessen)

![KN01 - CPU grep command](/KN01/Content/KN01%20-%20CPU%20grep.png)

3. Weisen Sie nun Ihrer VM, die Sie unter B erstellt haben mehr Prozessoren zu, als Ihr HostSystem logische Prozessoren hat. Starten Sie die VM und rufen Sie in der Console den Befehl 
lscpu | grep "CPU(s)" auf. (Screenshot für Abgabe nicht vergessen)

![Veruusch VM mehr Prozessoren zu geben](/KN01/Content/KN01%20-%20Mehr%20Prozessor.png)

![Versuch Fehlgeschlagen](/KN01/Content/KN01%20-%208Prozzesor%20versuch.png)

4. Machen Sie die gleichen Schritte wie eben mit der Ressource RAM. Der Linux Befehl zum
Auslesen ist free -g . 
