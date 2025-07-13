provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source                 = "./modules/ec2_instance"
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_group_id      = var.security_group_id
  key_name               = var.key_name
  name                   = var.name
  environment            = var.environment
  associate_public_ip_address = var.associate_public_ip_address
}

terraform {
  backend "s3" {
    bucket         = "dineshgandhi86-tf-state"
    key            = "env/dev/terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

