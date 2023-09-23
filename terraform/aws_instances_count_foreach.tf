/*
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}
*/

// Create four instances with count index

/*
resource "aws_instance" "aws_ec2_count" {
  count         = 4
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Aws-instance-${count.index}"
  }
}
*/

// Create four instances with list of name

/*
locals {
  instance_names = toset(["Bilal", "Ahmed", "Krish", "Sheraz"])
  # this is for key and value iteration
  #   instance_names = { "Bilal" : "ami-053b0d53c279acc90", "Ahmed" : "ami-053b0d53c279acc90", "Krish" : "ami-053b0d53c279acc90", "Sheraz" : "ami-053b0d53c279acc90" }

}
resource "aws_instance" "aws_ec2_foreach" {
  for_each      = local.instance_names
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}
*/

/*
resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "terraform-learning-2023-09-21"
	tags = {
		Name = "terraform-learning-2023-09-21"
		Environment = "Dev"
	}
}
*/

/*
output "ec2_public_ips" {
	value = aws_instance.my_ec2_instance.public_ip
}
*/
