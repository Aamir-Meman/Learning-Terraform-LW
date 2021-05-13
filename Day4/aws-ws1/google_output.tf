resource "null_resource"  "nullremote2" {
    depends_on = [
        null_resource.nullremote1
    ]
provisioner "local-exec" {
   command = "open http://google.com/ http://${aws_instance.webos1.public_ip}/web/index.html"
  }

}