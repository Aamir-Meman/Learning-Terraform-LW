provider "aws" {
region="us-east-1"
profile="account3"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-lw108-test-bucket"
  acl    = "private"
  versioning {
    enabled = true
  }
  lifecycle {
      prevent_destroy = true
  }
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}