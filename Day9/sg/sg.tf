provider "aws" {
region="us-east-1"
profile="account1"
}

variable "sgports"{
    type= list
    default = [80,81,8080,8081]
}

resource "aws_security_group" "s1" {
  name        = "my_sg"  
  dynamic ingress {
      for_each = var.sgports
      content {
        from_port        = ingress.value
        to_port          = ingress.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
      }
  }
}
