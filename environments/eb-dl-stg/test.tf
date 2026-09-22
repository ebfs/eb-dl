terraform {
  backend "s3" {
    bucket = "ebfs-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
  }
}