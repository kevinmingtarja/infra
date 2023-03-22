terraform {
  backend "s3" {
    bucket = "kevinmingtarja-terraform"
    key    = "kevinmingtarja.com/terraform.tfstate"
    region = "us-east-1"

    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
