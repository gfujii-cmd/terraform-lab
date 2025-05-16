resource "aws_s3_bucket" "terraform_state" {
  bucket = "filgueiras-clc13-network-terraform-state"
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}