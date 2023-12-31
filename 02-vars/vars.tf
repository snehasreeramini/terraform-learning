variable "example"{
  default = "Hello World"
}

output "example"{
  value = var.example
}

#######data types
#String data types
variable "sample1"{
  default = "Hello World"
}

#Numeber data types
variable "sample2"{
  default = 100
}

#Boolean data types
variable "sample3"{
  default = true
}


##variable typrs
variable "sample4"{
  type = list(any) #optional
  default = [
  "Hello",
    1000,
    true,
    "world"
  ]
}

variable "sample5"{
  type = map(any)
  default = {
    string  = "Hello",
    number  = 1000,
    boolean = true
  }

}


output "sample4"{
  value = var.sample4[0]
}


output "sample5" {
  value = var.sample5["number"]
}

variable  "URL" {}
output "URL"{
  value = var.URL
}

variable  "URL_CLI" {}
output "URL_CLI"{
  value = var.URL_CLI
}

variable  "URL_SHELL" {}
output "URL_SHELL"{
  value = var.URL_SHELL
}