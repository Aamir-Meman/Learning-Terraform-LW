provider "aws" {
region="us-east-1"
profile="account1"
}
variable "instance_type"{
    type = map
    default = {
        us-east-1 = "t2.micro",
        ap-south-1 = "t2.nano",
        us-west-1 = "t2.medium"
    }
}
resource "aws_instance" "os1" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = lookup(var.instance_type,"us-east-1","what?") 
  availability_zone = "us-east-1"
}
