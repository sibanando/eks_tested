resource "aws_internet_gateway" "Pharma_igw" {
  vpc_id = aws_vpc.Pharma_VPC.id

  tags = {
    Name = "Pharma_igw"
  }
}
