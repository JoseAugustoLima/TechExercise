terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"

  backend "remote" {
    organization = "joseaugustolima"
    workspaces {
      name = "Tech-Exercise"
    }
  }

}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "tech_server" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.small"
  tags = {
    Name = var.instance_name
  }
}

