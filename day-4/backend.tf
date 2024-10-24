terraform {
  backend "s3" {
    bucket = "fsdlovelyad"
    key="terraform.tfstate"
    region = "us-east-1"
  }
}