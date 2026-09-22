locals {
  aws_region = "eu-north-1"

  environment = "staging"

  project = "eb-dl"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"

  default_tags {
    tags = {
      Project     = "${local.project}"
      Environment = "${local.environment}"
      ManagedBy   = "Terraform"
      Owner       = "Elias Bergroth"
    }
  }
}
EOF
}