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