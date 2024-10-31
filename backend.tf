terraform {
  backend "s3" {
    bucket = "testayush"
    key    = "pharma/terraform.tfstate"
    region = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
