# KN06 - Skalierung

Beachten Sie die allgemeinen Informationen zu den Abgaben.
In dieser Kompetenz werden Sie eine Instanzen horizontal, vertikal und automatisiert skalieren. 
Lesen Sie sich in die Theorie ein, auch in die Dokumente in der Quelle.

[Aufgaben Stellung - KN06.pdf](/KN00/Content/KN06.pdf)

---

## TASK A - Installation App 

### Kurze Erklärung in eigenen Worten was ein Reverse Proxy ist
Ein Reverse Proxy ist ein Server, der als Vermittler zwischen einem Client und Backend-Servern agiert. Er empfängt Anfragen von Clients, leitet sie an die entsprechenden Backend-Server weiter und sendet die Antworten an den Client zurück. Dabei kann er verschiedene Funktionen wie Lastausgleich, Caching und SSL-Verschlüsselung bereitstellen, um die Leistung und Sicherheit des Systems zu verbessern.

![](/KN06/Content/Task%20A/ProceedIP.png)
![](/KN06/Content/Task%20A/Collections.png)
![](/KN06/Content/Task%20A/Swagger.png)

## TASK B - Vertikale Skalierung

### Volumen
![](/KN06/Content/Task%20B/Speciherplatzänderung.png)

### Instance Typ
![](/KN06/Content/Task%20B/t2micro%20vorher.png)
![](/KN06/Content/Task%20B/t2Meidum.png)

### Erklärungen
Um das Laufwerk auf 20 GB zu erweitern, können Sie folgende Schritte befolgen, ohne die Instanz stoppen zu müssen:

1. Gehen Sie zu den Volumes-Einstellungen.
2. Wählen Sie das gewünschte Volume aus.
3. Klicken Sie auf "Volume ändern".
4. Erhöhen Sie den Speicherplatz auf 20 GB.
5. Bestätigen Sie die Änderungen.

Bitte beachten Sie, dass für die Anpassung des Instanz-Typs ein Neustart der Instanz erforderlich ist. Führen Sie die folgenden Schritte aus:

1. Stoppen Sie die Instanz.
2. Gehen Sie zu den Instanz-Einstellungen.
3. Wählen Sie "Instanz-Typ ändern".
4. Wählen Sie den gewünschten neuen Instanz-Typ aus.
5. Wenden Sie die Änderungen an.

Nachdem die Änderungen angewendet wurden, können Sie die Instanz wieder starten und das Laufwerk sollte die gewünschte Größe haben.

## TASK C - Horizontale Skalierung

![](/KN06/Content/Task%20C/Loadbalancer.png)

### Erläuterung:
Mit Hilfe einer Route-Funktion (53) kann der DNS auf app.tbz-m346.ch gesetzt werden.
In der aktuellen Umgebung ist es nicht unbedingt notwendig, statische IPs zu verwenden, da alle Anfragen an die IP-Adresse des Load Balancers gesendet und erst dann an die Instanzen weitergeleitet werden.
Es ist jedoch wichtig, dass die Sicherheitsgruppe so konfiguriert ist, dass der Datenverkehr zwischen dem Load Balancer und den Instanzen nicht blockiert wird, aber gleichzeitig nicht jeder auf alle Daten zugreifen kann.

### Anleitung

Um die Umgebung entsprechend einzurichten, folgen Sie bitte den nachstehenden Schritten:

1. Erstellen Sie einen Load Balancer: Gehen Sie zu Ihrem Cloud-Anbieter und erstellen Sie einen Load Balancer. Stellen Sie sicher, dass der Load Balancer für HTTP/TCP-Anfragen konfiguriert ist und den gewünschten Port (normalerweise Port 80 für HTTP) verwendet.
2. Erstellen Sie zwei Instanzen des Web Servers: Erstellen Sie zwei Instanzen Ihrer Web Server (z. B. virtuelle Maschinen) und stellen Sie sicher, dass sie den erforderlichen Web Server und die Anwendungen enthalten.
3. Konfigurieren Sie den Load Balancer: Fügen Sie die beiden Web Server-Instanzen dem Load Balancer hinzu. Stellen Sie sicher, dass die Lastverteilungsmethode (z. B. Round Robin) entsprechend Ihren Anforderungen eingestellt ist.
4. Konfigurieren Sie statische IPs (optional): Wenn Sie statische IPs für Ihre Instanzen verwenden möchten, weisen Sie ihnen statische IP-Adressen zu. Dadurch wird sichergestellt, dass die IP-Adressen der Instanzen beim Neustart nicht geändert werden.
5. Konfigurieren Sie Sicherheitsgruppen: Erstellen Sie eine Sicherheitsgruppe für den Load Balancer, in der die erforderlichen eingehenden Regeln für den Zugriff auf den Web Server konfiguriert sind. Stellen Sie sicher, dass der Zugriff auf Port 80 (HTTP) oder den von Ihnen verwendeten Port erlaubt ist.
6. Konfigurieren Sie den DNS: Gehen Sie zu Ihrem Domain-Registrar (z. B. GoDaddy, Namecheap) und konfigurieren Sie einen DNS-Eintrag. Erstellen Sie einen CNAME-Eintrag für die gewünschte Subdomain (z. B. app.tbz-m346.ch), der auf den Hostnamen des Load Balancers verweist.
7. Nachdem Sie den Load Balancer, die Instanzen, die statischen IPs, die Sicherheitsgruppen und den DNS konfiguriert haben, können Sie die Load-Balancer-URL (z. B. http://app.tbz-m346.ch) aufrufen und überprüfen, ob Swagger und der Endpunkt ordnungsgemäß funktionieren.

Bitte beachten Sie, dass die genauen Schritte und die Konfiguration je nach Ihrem Cloud-Anbieter und der verwendeten Technologie variieren können.

### Auskunft

1. Load Balancer: Ein Load Balancer verteilt den Datenverkehr auf mehrere Instanzen, um die Last zu verteilen und die Verfügbarkeit zu verbessern.
2. Target Group: Eine Target Group enthält die Instanzen, auf die der Load Balancer den Datenverkehr verteilt.
3. Health Check: Ein Health Check überprüft regelmäßig den Status der Instanzen, um sicherzustellen, dass sie ordnungsgemäß funktionieren und den Datenverkehr verarbeiten können.
4. IPs: IPs (Internet Protocol Addresses) sind eindeutige Identifikatoren für Geräte und Instanzen in einem Netzwerk.
5. Sicherheitsgruppen: Sicherheitsgruppen dienen der Kontrolle des Netzwerkzugriffs und ermöglichen die Definition von Regeln für den Datenverkehr zu und von Instanzen.
6. Listener: Ein Listener ist eine Komponente des Load Balancers, die den eingehenden Datenverkehr auf einen bestimmten Port und Protokolltyp hört und ihn an die entsprechende Target Group weiterleitet.

## TASK D - Auto Scaling
![Auto Scaling](/KN06/Content/Task%20D/AutoScailing%20Groupe.png)