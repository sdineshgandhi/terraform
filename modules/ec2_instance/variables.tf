
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_id" {}
variable "key_name" {}
variable "name" {}
variable "environment" {
  default = "dev"
}
variable "associate_public_ip_address" {
  type    = bool
  default = true
}

