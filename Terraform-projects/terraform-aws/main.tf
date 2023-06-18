terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~>4.16"
                }
}
        required_version = ">=1.2.0"
}

provider "aws" {
        region = "us-west-1"
                }
resource "aws_instance" "aws_ec2_test" {
        count = 4
        ami = "ami-0f8e81a3da6e2510a"
        instance_type = "t2.micro"
        tags = {
                Name = "TerraforM instance"
                }
}

resource "aws_s3_bucket" "my_s3_bucket" {
        bucket = "terraform-thisissujit-iac-1234"
        tags = {
                Name = "terraform-thisissujit-iac-1234"
                Environment = "Dev"
                }
}


