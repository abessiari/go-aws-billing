provider "aws" {
  region = var.region
  shared_credentials_file = var.aws_credentials_file
}
