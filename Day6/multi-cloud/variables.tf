# variable "x" {
#    default = "t2.micro"
#    type = string
# }

# variable "x" {}

#variable "y"{
#    type = bool
#}

variable "mtype" {}

variable "istest" {
    type = bool
}

variable "azaws" {
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
    type = list
}

variable "types"{
    type = map
    default = {
        us-east-1 = "t2.micro",
        ap-south-1 = "t2.nano",
        us-west-1 = "t2.medium"
    }
}

# output "o1" {
    # value = var.x
# }
output "o2" {
    value = var.azaws
}
output "o3" {
    value = var.types["us-east-1"]
}
#output "o2" {
   # value = var.y ? "vimal" : "jack"
#}