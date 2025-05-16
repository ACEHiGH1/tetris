terraform {
  backend "s3" {
    bucket         = "devops-tetris"
    region         = "us-west-2"
    key            = "devops-demo/jenkins/terraform.tfstate"
    dynamodb_table = "dynamodb-terraform-devops-locking"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}