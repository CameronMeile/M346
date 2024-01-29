# KN09 - Automation

Beachten Sie [die allgemeinen Informationen zu den Abgaben.](https://gitlab.com/ch-tbz-it/Stud/m346/m346/-/blob/main/Abgaben.md)


[Aufgaben Stellung - KN09.pdf](/KN00/Content/KN09.pdf)

---

## TASK A - Automatisierung mit Command Line Interface

### Stoppen einer Instanz (nicht terminieren)
```
aws ec2 stop-instances --instance-ids i-0933542de7a651e16 --region us-east-1
```
![](/KN09/Content/Task%20A/InstanceStopp.png)

### Starten der gleichen Instanz
```
aws ec2 start-instances --instance-ids i-0933542de7a651e16 --region us-east-1
```
![](/KN09/Content/Task%20A/InstanceStart.png)

### Erstellen einer neuen Instanz
```
aws ec2 run-instances --image-id ami-0c7217cdde317cfec --instance-type t2.micro --key-name Cameron-2 --security-group-ids sg-0b8500efb36934160 --region us-east-1 --user-data file://C:/Users/came/cloud-init-db-1.yaml
```
![](/KN09/Content/Task%20A/InstanceCreate.png)
![](/KN09/Content/Task%20A/Instance.png)

### Telnet CloudInit
```
telnet 3.85.83.165 3306
```
![](/KN09/Content/Task%20A/Telnet.png)

## TASK B - Terraform
