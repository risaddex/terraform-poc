terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  shared_config_files      = "sa-east-1"
  shared_credentials_files = "~/.aws/credentials"
  profile                  = "vscode"
}
