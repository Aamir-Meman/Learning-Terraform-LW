provider "aws" {
region="us-east-1"
profile="account1"
}
module "mydevm" {
    source = "../ec2"
    mtype = "t2.micro"
}