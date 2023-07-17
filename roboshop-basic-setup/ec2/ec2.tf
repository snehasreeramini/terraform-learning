resource "aws_spot_instance_request" "cheap_worker" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  wait_for_fulfillment = true

  tags = {
    Name = "var.COMPONENT"
  }

  provisioner "remote-exec" {
    connection {
      host = "self.public_ip"
      user = "centos"
      password = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/snehasreeramini/ansible roboshop.yml -e HOST=localhost -e role_name=${var.COMPONENT} -e ENV=dev -e APP_VERSION=$(var.APP_VERSION)"
    ]
  }
}