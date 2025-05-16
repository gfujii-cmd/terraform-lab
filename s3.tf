resource "aws_s3_bucket" "terraform_state" {
  bucket = "filgueiras-clc13-network-terraform-state"
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "versioning_bucket_access" {
  bucket = aws_s3_bucket.versioning_bucket.id

  block_public_acls   = true
  block_public_policy = true
}