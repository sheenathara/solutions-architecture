terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    harness = {
      source  = "harness/harness"
      version = "0.27.2"
    }
  }
  # backend "s3" {
  #   bucket = "harness-solutions-architecture"
  #   key    = "terraform/internal"
  #   region = "us-west-2"
  # }
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      ttl   = "-1"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "harness" {
  account_id = var.account_id
  endpoint   = "https://qa.harness.io/gateway"
}
