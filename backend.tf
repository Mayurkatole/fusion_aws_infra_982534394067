terraform {
  backend "s3" {
    bucket = "fusion-aws-infra-tfstatebucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}