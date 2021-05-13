resource "aws_instance" "webos1" {
ami = "ami-0d5eff06f840b45e9"
instance_type = "t2.micro"
key_name = "LearningTf"
security_groups = ["web-port-allow"]
tags = {
  Name = "Web Server by TF"
 }
}