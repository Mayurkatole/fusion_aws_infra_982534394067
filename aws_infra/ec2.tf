resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    Name = "prodserver001"
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_range
}

resource "aws_s3_bucket" "example" {
  bucket = var.aws_s3_bucket

  tags = {
    Name        = "My bucket 0007"
    Environment = "Dev"
  }
}