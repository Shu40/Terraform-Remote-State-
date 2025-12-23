variable "region" {
  description = "this is global variable"
  type = string
  default = "us-west-2"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "nirala-terraform-rzsc0slsrrk"
    key = "backend.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = var.region

}
resource "aws_instance" "myserver" {
  ami = "ami-0ebf411a80b6b22cb"
  instance_type = "t2.micro"

  tags = {
    Name="Samples server"
  }

}