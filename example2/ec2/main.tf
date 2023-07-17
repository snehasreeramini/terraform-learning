resource "aws_instance" "sample" {
  ami                    = "data.aws_ami.example.image_id"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg]
  provisioner "local-exec"{
    command = <<EOF
    sleep 60;
    cd /home/centos/ansible
    ansible-playbook -i ${self.public_ip}, roboshop.yml -e HOST=all -e role_name=frontend -e ENV=dev
  EOF
  }
}

variable "sg" {}

output "public_ip"{
  value = aws_instance.sample.public_ip
}