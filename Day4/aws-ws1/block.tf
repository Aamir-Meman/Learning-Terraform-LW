resource "aws_ebs_volume" "storage1" {
  availability_zone = aws_instance.webos1.availability_zone 
  size              = 1
  tags = {
    Name = "TF permanent HD"
  }
}