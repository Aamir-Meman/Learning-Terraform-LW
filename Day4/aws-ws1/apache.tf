resource "null_resource" "nullremote1" {

depends_on = [
    aws_instance.webos1,
    aws_ebs_volume.storage1,
    aws_volume_attachment.ebs_att
  ]

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
      "sudo systemctl enable httpd",
      "sudo mkfs.ext4 /dev/sdh",
      "sudo mount /dev/sdh /var/www/html",
      "sudo yum install git -y",
      "sudo git clone https://github.com/Aamir-Meman/HTML.git /var/www/html/web"
    ]
  }
}