# KN03: Cloud-init und AWS
In dieser Kompetenz werden wir mit der Automatisierung der Installation arbeiten. Sie werden
Cloud-init verwenden um Server zu installieren. 

---

## Cloud-init Datei Verstehen
```
#cloud-config

users:  # Benutzerkonfiguration
  - name: ubuntu  # Name des Benutzers
    sudo: ALL=(ALL) NOPASSWD:ALL  # Ermöglicht dem Benutzer sudo-Rechte ohne Passwort
    groups: users, admin  # Gruppenmitgliedschaft des Benutzers
    home: /home/ubuntu  # Pfad zum Benutzerverzeichnis
    shell: /bin/bash  # Standard-Shell des Benutzers

    ssh_authorized_keys:  # Liste der zugelassenen SSH-Schlüssel
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0WGP1EZykEtv5YGC9nMiPFW3U3DmZNzKFO5nEu6uozEHh4jLZzPNHSrfFTuQ2GnRDSt+XbOtTLdcj26+iPNiFoFha42aCIzYjt6V8Z+SQ9pzF4jPPzxwXfDdkEWylgoNnZ+4MG1lNFqa8aO7F62tX0Yj5khjC0Bs7Mb2cHLx1XZaxJV6qSaulDuBbLYe8QUZXkMc7wmob3PM0kflfolR3LE7LResIHWa4j4FL6r5cQmFlDU2BDPpKMFMGUfRSFiUtaWBNXFOWHQBC2+uKmuMPYP4vJC9sBgqMvPN/X2KyemqdMvdKXnCfrzadHuSSJYEzD64Cve5Zl9yVvY4AqyBD aws-key

ssh_pwauth: false  # Deaktiviert das SSH-Passwort-Authentifizierungsverfahren
disable_root: false  # Erlaubt den Zugriff als Root-Benutzer
package_update: true  # Aktualisiert die Paketliste beim Start der VM

packages:  # Liste der zu installierenden Pakete
  - curl
  - wget
```

## SSH-Key und Cloud-init
![](/KN03/Content/TASK%20B/ListOfRightSSH.png)
### Login with 2-pem key - Denied
![](/KN03/Content/TASK%20B/PEM-Key2.png)
### Login with 1-pem key - Sucess
![](/KN03/Content/TASK%20B/PEM-Key1.png)
### Log of Instance
![](/KN03/Content/TASK%20B/Log.png)


## Template
'''
ssh -i "Cameron-1.pem" ubuntu@107.20.93.224
'''

## Auftrennung von Web- und Datenbankserver

- [Cloud-init-db.yaml](/KN03/YAML%20Task%20D/cloud-init-db.yaml)
- [Cloud-init-web.yaml](/KN03/YAML%20Task%20D/cloud-init-web.yaml)

![](/KN03/Content/TASK%20D/MySQL-DB.png)

![](/KN03/Content/TASK%20D/TELNET-DB.png)

![](/KN03/Content/TASK%20D/Index.png)
![](/KN03/Content/TASK%20D/infophp.png)
![](/KN03/Content/TASK%20D/dbphp.png)
![](/KN03/Content/TASK%20D/ADMIER-DB.png)

