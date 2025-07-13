variable "aws_region" {}
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_id" {}
variable "key_name" {}
variable "name" {}
variable "environment" {}
variable "associate_public_ip_address" {
  type    = bool
  default = true
}

