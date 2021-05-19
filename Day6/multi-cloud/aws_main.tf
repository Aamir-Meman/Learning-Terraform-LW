resource "aws_instance" "os1" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = var.types["us-east-1"]
  availability_zone = var.azaws[0]
  count = var.istest ? 0 : 1
}
