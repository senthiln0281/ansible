provider "aws" {
  region = "us-west-2"
}

esource "aws_instance" "Application" {
  count = var.instance_count
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  iam_instance_profile   = var.iam_instance_profile
}