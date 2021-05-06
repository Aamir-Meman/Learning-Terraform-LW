provider "aws" {
region="us-east-1"
profile="account1"
}

# Step 1
resource "aws_instance" "os1" {
ami = "ami-0d5eff06f840b45e9"
instance_type = "t2.micro"
tags = {
  Name = "my first TF OS 11"
 }
}

# Step 2
resource "aws_ebs_volume" "storage1" {
  availability_zone = aws_instance.os1.availability_zone 
  size              = 10

  tags = {
    Name = "LinuxWorld HD new"
  }
}

# Step 3
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.storage1.id
  instance_id = aws_instance.os1.id
}

output "my_public_ip" {
  value = aws_instance.os1.public_ip
}
output "my_az" {
  value = aws_instance.os1.availability_zone
}
output "subnet" {
  value = aws_instance.os1.subnet_id
}
output "o2" {
  value = aws_ebs_volume.storage1.id
}
output "o3" {
  value = aws_volume_attachment.ebs_att.device_name
}
