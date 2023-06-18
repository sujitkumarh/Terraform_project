terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "~> 4.16"
                        }
}
        required_version = ">= 1.2.0"
}

        provider "aws" {
        region = "us-west-1"
}
        locals {
                instances = {"sujit":"ami-0062dbf6b829f04e1","hari":"ami-0f8e81a3da6e2510a","datta":"ami-0062dbf6b829f04e1","umesh":"ami-0f8e81a3da6e2510a"}
}


resource "aws_instance" "aws_ec2_test" {
        for_each =  local.instances
        ami = each.value
        instance_type= "t2.micro"
        tags= {
                Name = each.key
}
}
