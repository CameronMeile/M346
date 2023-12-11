# KN04 - Cloud-init / Storage

In dieser Kompetenz werden Sie eine eigene PHP-Dateien erstellen und mit Cloud-Init zusätzlich
zu den bestehenden. Sie werden Bilder mit S3 hosten und in PHP einbinden. Dabei arbeiten Sie
mit den Speichermodellen. 

[Aufgaben Stellung - KN04.pdf](/KN00/Content/KN04.pdf)

---

## TASK A - Bild erstellen und auf S3 hosten
![Location of Obejcts](/KN04/Content/Task%20A/S3-Objekte.png)
![Unsplashed Bild via URL](/KN04/Content/Task%20A/Unsplashbild.png)

## TASK B - Web-Server mit PHP-Seite hinzufügen
[php File](/KN04/Task%20B%20php/bild.php)
[yaml File mit änderung vom php File](/KN04/Task%20B%20php/cloud-init-web.yaml)
![PHP](/KN04/Content/Task%20B/phpImage.png)

## TASK C - Elastic Block Storage (EBS) hinzufügen
![2Speicher](/KN04/Content/Task%20C/Speicher.png)

## TASK D - Speichereigenschaften erkennen
"Hot-Warm-Cold" ist ein Speichermodell, das Daten nach ihrer Häufigkeit und Zugriffsgeschwindigkeit kategorisiert. 

- **Hot Data** sind häufig genutzte Daten, die schnell verfügbar sein müssen. 
- **Warm Data** sind weniger häufig genutzte Daten mit moderatem Zugriff. 
- **Cold Data** sind selten abgerufene Daten, die auf kostengünstigeren Medien gespeichert werden. 

![](/KN04/Content/Task%20D/Bild.png)

- Das EBS-Root-Volumen enthält das Betriebssystem und die Systemdateien einer EC2-Instanz. Da das Root-Volumen für den Betrieb der Instanz unerlässlich ist und häufig darauf zugegriffen wird, wird es als "Hot" kategorisiert. Die Persistenz ist "ja", da das Root-Volumen nach dem Neustart der Instanz beibehalten wird.

- Die Kategorisierung als hot, warm oder cold hängt von der Verwendung des zusätzlichen Volumens ab. Wenn das Volumen für häufige Lese- und Schreibzugriffe verwendet wird, um beispielsweise Datenbankdateien oder Anwendungsdaten zu speichern, kann es als "Hot" betrachtet werden. Wenn das Volumen für seltene Zugriffe oder für Archivierungszwecke genutzt wird, kann es als "Cold" betrachtet werden. Die Persistenz ist in der Regel "ja", da EBS-Volumen standardmäßig persistent sind.

- S3 ist ein skalierbarer und kostengünstiger Cloud-Speicherdienst von Amazon. Es kann für verschiedene Datenkategorien verwendet werden. Wenn S3 für häufige Zugriffe auf aktuelle Daten verwendet wird, wie z. B. für die Speicherung von Protokolldateien oder Medieninhalten, kann es als "Hot" betrachtet werden. Wenn S3 für weniger häufige Zugriffe oder für die langfristige Speicherung von Backups oder Archivdaten verwendet wird, kann es als "Warm" oder "Cold" betrachtet werden. Die Persistenz ist in der Regel "ja", da Daten in S3 dauerhaft und beständig sind.