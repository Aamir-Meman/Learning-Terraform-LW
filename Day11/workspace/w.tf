provider "aws" {
region="us-east-1"
profile="account1"
}
variable "instance_type"{
    type = map
    default = {
        dev = "t2.micro",
        default  = "t2.nano",
        prod = "t2.medium"
    }
}
resource "aws_instance" "os1" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = lookup(var.instance_type,terraform.workspace)
}
