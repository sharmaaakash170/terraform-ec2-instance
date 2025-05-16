provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "terraform"
  subnet_id     = var.subnet_id
  associate_public_ip_address =  true
  
  tags = {
    Name = "My_ec2"
  }
}

