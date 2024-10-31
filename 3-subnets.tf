resource "aws_subnet" "pharma_private-us-west-2a" {
  vpc_id            = aws_vpc.Pharma_VPC.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "us-west-2a"

  tags = {
    "Name"                            = "pharma_private-us-west-2a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "pharma_private-us-west-2b" {
  vpc_id            = aws_vpc.Pharma_VPC.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "us-west-2b"

  tags = {
    "Name"                            = "pharma_private-us-west-2b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "pharma_public-us-west-2a" {
  vpc_id                  = aws_vpc.Pharma_VPC.id
  cidr_block              = "10.0.64.0/19"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "pharma_public-us-west-2a"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}

resource "aws_subnet" "pharma_public-us-west-2b" {
  vpc_id                  = aws_vpc.Pharma_VPC.id
  cidr_block              = "10.0.96.0/19"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "pharma_public-us-west-2b"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}
