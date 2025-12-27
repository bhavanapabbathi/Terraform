provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "bhavana" {
  ami           = "ami-068c0051b15cdb816" # Amazon Linux 2 us-east-1
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnet.default.id

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  vpc_id = data.aws_vpc.default.id
}

  tags = {
    Name = "FREE-TIER"
  }
}