terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "eu-west-1"


  default_tags {
    tags = {
      Enviroment = "Prodaction"
      Owner      = "Volodymyr Hrytsaienko"
    }
  }
}