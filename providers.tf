terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

// Baixe a extensão do vscode e crie uma credencial com nome "vscode"
provider "aws" {
  region                   = "sa-east-1"
# https://github.com/risaddex/terraform-poc/blob/main/.github/examples/credentials
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode"
}
