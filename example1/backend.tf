terraform {
  backend "s3" {
    bucket =  "terraform-b6"
    key    =  "example/terraform.tfstate"
    region =  "us-east-1"
  }
}