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

### Befehle konzeptionell hinschreiben
# Subnetze erstellen
aws ec2 create-subnet --vpc-id VPC_ID --cidr-block 10.0.3.0/24 --subnet-name Subnet-KN09
 
# Private IPs auswählen
PrivateIP1="10.0.1.10"
PrivateIP2="10.0.2.10"
 
# Security Groups erstellen
aws ec2 create-security-group --group-name Web-SG --description "Security Group for Web" --vpc-id vpc-00fad79e0fa72f1dc
aws ec2 create-security-group --group-name DB-SG --description "Security Group for DB" --vpc-id vpc-00fad79e0fa72f1dc
 
# Regeln für DB-SG aktualisieren (nur Zugriff innerhalb des Subnetzes)
aws ec2 authorize-security-group-ingress --group-id DB_SG_ID --protocol tcp --port 3306 --source-prefix-list YOUR_SUBNET_CIDR
 
# Instanzen erstellen
aws ec2 run-instances --image-id AMI_ID --subnet-id sg-0b8500efb36934160 --instance-type t2.micro --key-name KEY_PAIR --security-group-ids WEB_SG_ID --private-ip-address $PrivateIP1
 
aws ec2 run-instances --image-id AMI_ID --subnet-id sg-0b8500efb36934160 --instance-type t2.micro --key-name KEY_PAIR --security-group-ids DB_SG_ID --private-ip-address $PrivateIP2
 
# Elastische IPs erstellen
aws ec2 allocate-address --domain vpc --output json
 
# Instanzen stoppen
aws ec2 stop-instances --instance-ids INSTANCE_ID_1 INSTANCE_ID_2

## TASK B - Terraform

Konsolen-Befehle Terraform:
```
terraform init
```
```
terraform fmt
```
```
terraform validate
```
```
terrform apply
```

[Terradorm.tf](/KN09/Content/Task%20B/Terradorm.tf)
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure AWS
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example_instance" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t2.medium"
  key_name               = "Cameron-2"
  user_data              = file("C:/Users/came/cloud-init-db-1.yaml")
  vpc_security_group_ids = ["sg-0b8500efb36934160"]
  tags = {
    Name = "Terraform - KN09"
  }
}
```

### TelNet 3306
![](/KN09/Content/Task%20B/Telnet.png)

### Erklärung
Die Sache ist leichter zu verwalten und hat weniger Fehlerpotenzial. Dadurch wird die Effizienz gesteigert und Probleme werden minimiert.