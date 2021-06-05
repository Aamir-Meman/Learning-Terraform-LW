provider "aws" {
region="us-east-1"
profile="account3"
}
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "tfstate-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}