terraform {
  backend "s3" {
    bucket = "pharam-state"
    key    = "pharma/terraform.tfstate"
    region = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
