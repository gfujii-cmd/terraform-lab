terraform {
  backend "s3" {
    bucket = "filgueiras-clc13-network-terraform-state"
    key    = "network/state"
    region = "us-east-1"
  }
}
# Trigga o action (teste)