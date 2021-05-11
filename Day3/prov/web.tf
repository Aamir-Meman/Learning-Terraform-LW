provider "aws" {
region="us-east-1"
profile="account1"
}

# Step 1 :- Create the O.S.
resource "aws_instance" "webos1" {
ami = "ami-0d5eff06f840b45e9"
instance_type = "t2.micro"
key_name = "LearningTf"
security_groups = ["web-port-allow"]
tags = {
  Name = "Web Server by TF"
 }
}
resource "null_resource" "nullremote1" {
connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("/Users/ameman/Downloads/LearningTf.pem")
    host     = aws_instance.webos1.public_ip
  }
provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y ",
      "sudo yum install httpd -y ",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd"
    ]
  }
}

# Step 2:- Create the EBS volume
resource "aws_ebs_volume" "storage1" {
  availability_zone = aws_instance.webos1.availability_zone 
  size              = 1
  tags = {
    Name = "TF permanent HD"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.storage1.id
  instance_id = aws_instance.webos1.id
  force_detach = true
}

# Step 3:- Mount the EBS volume
resource "null_resource" "nullremote2" {
connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("/Users/ameman/Downloads/LearningTf.pem")
    host     = aws_instance.webos1.public_ip
  }
provisioner "remote-exec" {
    inline = [
      "sudo mkfs.ext4 /dev/sdh",
      "sudo mount /dev/sdh /var/www/html"
    ]
  }
}

# Step 4:- Install git and clone the project to /web folder
resource "null_resource" "nullremote3" {
connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("/Users/ameman/Downloads/LearningTf.pem")
    host     = aws_instance.webos1.public_ip
  }
provisioner "remote-exec" {
    inline = [
      "sudo yum install git -y",
      "sudo git clone https://github.com/Aamir-Meman/Php.git /var/www/html/web"
    ]
  }
}

# Step 5:- Run the project in Chrome with your instance public_ip address.

resource "null_resource"  "nullremote4" {
provisioner "local-exec" {
   command = "open http://google.com/ http://#<public_ip>#/web/index.html"
  }

}

