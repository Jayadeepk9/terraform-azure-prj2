variable "rgname" {}

variable "rgloc" {}

variable "vnet" {}

variable "add_space" {}

variable "subnets" { # 4 subnets using map complex
  type = map(any)
  default = {
    subnet1 = { #key

      name             = "prj2-dev-subnet1" #value , Subnet 1 name for projext 2 - devolopers
      address_prefixes = ["10.0.0.0/24"]    #value , Subnet 1 address prefixe
    }
    subnet2 = { #key

      name             = "prj2-dev-subnet2" #value , Subnet 2 name for projext 2 - devolopers
      address_prefixes = ["10.0.1.0/24"]    #value , Subnet 2 address prefixe
    }

    subnet3 = { #key

      name             = "prj2-dev-subnet3" #value , Subnet 3 name for projext 2 - devolopers
      address_prefixes = ["10.0.2.0/24"]    #value , Subnet 3 address prefixe
    }
    subnet4 = { #key

      name             = "prj2-dev-subnet4" #value  , Subnet 4 name for projext 2 - devolopers
      address_prefixes = ["10.0.3.0/24"]    #value , Subnet 4 address prefixe
    }
  }
}