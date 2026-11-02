terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.19"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "anna"
}
