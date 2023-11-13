# KN01 Virtualisierung

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

![Verusch VM mehr Prozessoren zu geben](/KN01/Content/KN01%20-%20Mehr%20Prozessor.png)

![Versuch Fehlgeschlagen](/KN01/Content/KN01%20-%208Prozzesor%20versuch.png)

4. Machen Sie die gleichen Schritte wie eben mit der Ressource RAM. Der Linux Befehl zum
Auslesen ist free -g .

![Versuch VM mehr RAM zu geben](/KN01/Content/KN01%20-%20Mehr%20RAM.png)

![Versuch Erfolg](/KN01/Content/KN01%20-%20Mehr%20RAM%20Fehlgeschlagen.png)

## Fazit

### CPU
In der Gesamtzahl aller VM's kann die Anzahl der virtuellen CPU Kerne die der realen übersteigen ("Überbuchung") - das bedeutet, dass sich mehrere VM's die gleichen Kerne teilen. Eine einzelne VM kann hingegen nicht mehr Kerne haben als der reale Host, da physische Hardware ja tatsächlich Aufgrund der Angabe zugeteilt wird. Nicht existente Kerne können logischerweise nicht zugeteilt werden.

### RAM
Man kann mehr RAM

Die maximale Arbeitsspeichergröße einer virtuellen Maschine hängt vom physischen Arbeitsspeicher des Hosts und der Kompatibilitätseinstellung der virtuellen Maschine ab.

Wenn der Arbeitsspeicher der virtuellen Maschine größer als der Hostarbeitsspeicher ist, wird eine Auslagerung durchgeführt, die sich sehr stark auf die Leistung der virtuellen Maschine auswirken kann. 