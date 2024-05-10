resource "aws_instance" "Server1" {
  ami                         = var.imagename
  instance_type               = var.instancetype
  key_name                    = var.keyname
  subnet_id                   = aws_subnet.subnet1.id
  vpc_security_group_ids      = ["${aws_security_group.SG1.id}"]
  associate_public_ip_address = true
  tags = {
    Name  = "Server-01"
    Owner = "Ajay"
  }
  user_data = <<-EOF
		#!/bin/bash
    sudo yum -y update
		sudo yum install -y nginx
		service nginx start
		echo "<div><h1>$(cat /etc/hostname)</h1></div>" >> /usr/share/nginx/html/index.html
	EOF
}