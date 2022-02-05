terraform {
    required_version = "~> 1.1.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0651f1bab1a933ae5" 
	instance_type = "t2.micro"
}
