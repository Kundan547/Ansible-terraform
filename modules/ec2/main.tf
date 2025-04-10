resource "aws_instance" "web_instance" {
  ami                    = "ami-084568db4383264d4"
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_ids["web_sg"]]

  tags = {
    Name = "web-server"
  }
}

resource "aws_instance" "db_instance" {
  ami                    = "ami-084568db4383264d4"
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_ids["db_sg"]]

  tags = {
    Name = "db-server"
  }
}
