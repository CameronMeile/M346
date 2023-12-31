# KN02 - IaaS - Virtuelle Server

Wir werden nun mit einem public cloud Anbieter arbeiten. Wir verwenden Amazon Web Services
(AWS). Aber alles was wir hier umsetzen, bieten auch andere public cloud Anbieter (z. B. Microsoft
Azure).
Wir verwenden teilweise die AWS Schulungsumgebung für diese Kompetenz. Sie haben eine
Einladung für zwei Kurse bekommen, die wir folgend verwenden werden.
Sie erlernen den grundsätzlichen Umgang mit AWS. Anschliessend werden Sie lernen wie sie sich
mit einem SSH Key einloggt, gefolgt vom Verständnis für Cloud-init. Am Schluss vermischen Sie
SSH-Key mit cloud-init Konfiguration.

[Aufgaben Stellung - KN02.pdf](/KN00/Content/KN02.pdf)

---

- [Modul 1 - Global Infrastructure](/KN02/Global%20Infrastructure/README.md)
- [Modul 2 - TO BE CONTINUE]()
- [Modul 3 - TO BE CONTINUE]()
- [Modul 4 - TO BE CONTINUE]()


## TASK A - AWS Kurs

### Teil a - Lab 4.1 - EC2
![List of Instance](/KN02/Content/Teil%20a/Teil1.png)
![Data & Details of Instance](/KN02/Content/Teil%20a/Teil2.png)
![Details of Instance](/KN02/Content/Teil%20a/Details.png)
![Instance HTML](/KN02/Content/Teil%20a/LAbHMLT.png)

### Teil b - Lab 4.2 - S3
![List of Buckets](/KN02/Content/Teil%20b/BucketsList.png)
![List of Bucketsdata](/KN02/Content/Teil%20b/BucketDataList.png)
![Properties of Bucket](/KN02/Content/Teil%20b/EigenschaftenBucket.png)
![Policy Json of Bucket](/KN02/Content/Teil%20b/PolicyJson.png)
![HTML of Bucket](/KN02/Content/Teil%20b/Html.png)

## TASK B -  Zugriff mit SSH-Key
![SSH List of right Key](/KN02/Content/Task%20B/SHHKeyList.png)
![SSH Command 1 with pem1 - Success](/KN02/Content/Task%20B/SSH1.png)
![SSH Command 2 with pem2 - Denied](/KN02/Content/Task%20B/SSH2.png)

Der private Schlüssel liegt grundsätzlich im Verzeichnis mit dem Namen .ssh in Ihrem Home-Verzeichnis. Dies sowohl unter Windows als auch MacOS.
```
# Schlüsselpaar erstellen
ssh-keygen -f C:\Users\<IhrBenutzer>\.ssh\<Keyname>.pem -t rsa -b 2048 -C max
# z.B.
# ssh-keygen -f C:\Users\maxmuster\.ssh\max.pem -t rsa -b 2048 -C max
```
Dieser Befehl erstellt sowohl den privaten als auch den öffentlichen Schlüssel. Parameter:

-t: Verwendeter Algorithmus
-b: Schlüssellänge. sollte mindestens 2048 sein.
-C: Name des Schlüssels. Wird beim öffentlichen Schlüssel angehängt.

Falls Sie bereits einen privaten Schlüssel haben, können Sie davon auch den öffentlichen Schlüssel exportieren.
```
ssh-keygen -y -f C:\Users\<IhrBenutzer>\.ssh\<keyname>.pem > C:\Users\<IhrBenutzer>\.ssh\<keyname>.pub
# z.B. 
# ssh-keygen -y -f C:\Users\Marco\.ssh\marco1.pem > C:\Users\Marco\.ssh\marco1.pub
```

## TASK C - Installation von Web- und Datenbankserver
![WEB INFO](/KN02/Content/Task%20C/Index.png)
![WEB INFO](/KN02/Content/Task%20C/DBPHP.png)
![WEB INFO](/KN02/Content/Task%20C/InfoPHP.png)