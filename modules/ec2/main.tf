resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJpP8hHmGHKPfSPjECeYIMAi+tbNEYx2sIOAxyddke6k Gbenga@DESKTOP-GH1I5SN"
}


resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id

  user_data = file("${path.module}/apache_userdata.sh")

  tags = {
    Name = "Terraform-Web-EC2"
  }
}
