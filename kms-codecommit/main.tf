terraform {
  required_version = ">= 0.12.6"
}

provider "aws" {
  version = ">= 2.28.1"
  region  = var.region
}

provider "template" {
  version = "~> 2.1"
}

resource "aws_codecommit_repository" "secrets_repo" {
  repository_name = "${var.repo_name}-secrets"
  description     = "kms encrypted secrets for JupyterHub deployment"
}
