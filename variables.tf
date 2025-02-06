variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
  default     = "ami-0ff8a91507f77f867" 
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

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-06999366e5a7b9c99"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "subnet-0cd198b82cb0148a5"
}
