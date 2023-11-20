# KN03: Cloud-init und AWS

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