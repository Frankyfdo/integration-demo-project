variable "location" {
  type     = string
  default = "west europe"
  
}

variable "name"{
  type     = string
  
}

variable "address_space"{
 type     = list(string)
}

variable "address_prefixes"{
 type     = list(string)
}
