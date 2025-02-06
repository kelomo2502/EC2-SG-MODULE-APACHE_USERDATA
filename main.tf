provider "aws" {
  region = var.aws_region
}

module "sg" {
  source = "./modules/sg"
  vpc_id = var.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = module.sg.security_group_id
  subnet_id         = var.subnet_id
}
