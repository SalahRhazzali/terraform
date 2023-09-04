terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  key_name = "devops-salah"

  tags = {
    Name = "ec2-salah"
  }
}
