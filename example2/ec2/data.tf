data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-7-DevOps-Practice"
  owners           = ["self"]
}