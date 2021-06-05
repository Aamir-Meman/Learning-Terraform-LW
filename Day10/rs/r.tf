terraform {
  backend "s3" {
    bucket = "my-tf-lw108-test-bucket"
    key    = "my.tfstate"
    region = "us-east-1"
    profile = "account3"
    dynamodb_table = "tfstate-lock"
  }
}
