resource "aws_eip" "pharma_nat" {
  vpc = true

  tags = {
    Name = "pharma_nat"
  }
}

resource "aws_nat_gateway" "pharma_nat" {
  allocation_id = aws_eip.pharma_nat.id
  subnet_id     = aws_subnet.pharma_public-us-west-2a.id

  tags = {
    Name = "pharma_nat"
  }

  depends_on = [aws_internet_gateway.Pharma_igw]
}
