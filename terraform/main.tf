terraform {
  backend "s3" {
    bucket  = "ormavenproject"
    key     = "terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.6.0"
}


