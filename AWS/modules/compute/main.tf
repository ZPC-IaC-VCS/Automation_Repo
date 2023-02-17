terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-west-24"
}
resource "aws_instance" "ebs_optimized" {
  ami           = var.ami_id
  instance_type = var.type
  ebs_optimized = "false"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "monitoring" {
  ami           = var.ami_id
  instance_type = var.type
  monitoring = false
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
