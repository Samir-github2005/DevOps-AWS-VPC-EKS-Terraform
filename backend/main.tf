provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform-backend" {
  bucket = "terraform-backend-demo-1234567890"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "terraform-locks" {
  name = "terraform-locks"
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}