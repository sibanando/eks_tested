resource "aws_vpc" "Pharma_VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Pharma_VPC"
  }
}
