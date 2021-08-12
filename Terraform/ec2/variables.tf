variable "ami_id" {
  description = "AMI for the Manager"
}

variable "instance" {
  description = "instance type for the manager"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair for the manager"
  default     = "NewKeyPair"
}

variable "enable_public_ip" {
  description = "True if EC2 instance should have public IP"
  default     = true
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
}

variable "user_data" {
  description = "script to run when creating instance"
  default     = "data.template_file.init.rendered"
}

variable "name" {
  description = "Name of EC2 Instance"
  default     = "Project_Manager"
}
