provider "aws"{
   region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami                   =  "ami-0bb6af715826253bf"
  instance_type         =  "t3.micro"
  vpc_security_group_ids = [aws_default_security_group.default.id]
}

output "public_ip" {
  value = aws_instance.sample.public_ip
}
resource "aws_default_security_group" "default" {
   name             =     "allow_tls"
   description      =     "allow TLS inbound traffic"

  ingress {
    description =  "TLS FROM VPC"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}