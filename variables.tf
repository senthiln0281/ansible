variable "region" {
  description = "Name to be used on all resources as prefix"
  default     = ""us-west-2"
}

variable "instance_count" {
  description = "Number of instances to launch"
  default     = 1
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  default     = "ami-0994c095691a46fb5"
}

variable "disable_api_termination" {
  description = "Enable EC2 Instance Termination Protection"
  default     = true
}


variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance"
  default     = "ansible"
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  default     = "sg-036e6d54ad477997e"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  default     = "subnet-ebfeaea0"
}



variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile."
  type        = string
  default     = "EC2Role"
}