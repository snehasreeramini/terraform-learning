variable "COMPONENTS" {
  default = [
    "mongodb",
    "catalogue",
  ]
}

variable "APP_VERSION" {
  default = [
    "null",
    "1.0.0"
  ]
}

//variable "ALL_COMPONENTS" {
//  default = {
//    mongodb   = "null"
//    catalogue = "1.0.0"
//    redis     = "null"
//    user      = "1.0.0"
//    cart      = "1.0.2"
//    mysql     = "null"
//    shipping  = "1.0.0"
//    rabbitmq  = "null"
//    payment   = "1.0.0"
//    frontend  = "1.0.0"
//  }
//}

variable "ALL_COMPONENTS" {
  default = {
    mongodb = {
      app_version = "null"
    }
    catalogue = {
      app_version = "1.0.0"
    }
    redis = {
      app_version = "null"
    }
    user = {
      app_version = "1.0.0"
    }
    cart = {
      app_version = "1.0.2"
    }
    mysql = {
      app_version = "null"
    }
    shipping = {
      app_version = "1.0.0"
    }
    rabbitmq = {
      app_version = "null"
    }
    payment = {
      app_version = "1.0.0"
    }
    frontend = {
      app_version = "1.0.0"
    }
  }
}

//variable "ALL_COMPONENTS" {
//  default = {
//    mongodb   = "null"
//    catalogue = "1.0.0"
//    redis     = "null"
//    user      = "1.0.0"
//    cart      = "1.0.2"
//    mysql     = "null"
//    shipping  = "1.0.0"
//    rabbitmq  = "null"
//    payment   = "1.0.0"
//    frontend  = "1.0.0"
//  }
//}

#variable "ALL_COMPONENTS" {
#  default = {
#    mongodb = {
#      app_version = "null"
#    }
#    catalogue = {
#      app_version = "1.0.0"
#    }
#    redis = {
#      app_version = "null"
#    }
#    user = {
#      app_version = "1.0.0"
#    }
#    cart = {
#      app_version = "1.0.2"
#    }
#    mysql = {
#      app_version = "null"
#    }
#    shipping = {
#      app_version = "1.0.0"
#    }
#    rabbitmq = {
#      app_version = "null"
#    }
#    payment = {
#      app_version = "1.0.0"
#    }
#    frontend = {
#      app_version = "1.0.0"
#    }
#  }
#}