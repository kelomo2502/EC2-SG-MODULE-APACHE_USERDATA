variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH Key Pair Name"
  type        = string
  default = "gb_key"
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}
