terraform {
  backend "s3" {
    bucket = "pharam-state"
    key    = "pharma/terraform.tfstate"
    region = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
