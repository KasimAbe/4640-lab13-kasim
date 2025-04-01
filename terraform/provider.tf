terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "lab13-bucket-kasim"
    key = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    use_lockfile = true
  }	
}

provider "aws" {
  region = "us-west-2"
}
