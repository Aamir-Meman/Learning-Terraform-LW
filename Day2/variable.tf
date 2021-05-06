variable "x" {

type = string
default = "linux world"

}

output "myvalue" {
 value = "aaa ${var.x} hi bye"

}
