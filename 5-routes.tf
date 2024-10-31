resource "aws_route_table" "pharma_private" {
  vpc_id = aws_vpc.Pharma_VPC.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.pharma_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "pharma_private"
  }
}

resource "aws_route_table" "pharma_public" {
  vpc_id = aws_vpc.Pharma_VPC.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.Pharma_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "pharma_public"
  }
}

resource "aws_route_table_association" "pharma_private-us-west-2a" {
  subnet_id      = aws_subnet.pharma_private-us-west-2a.id
  route_table_id = aws_route_table.pharma_private.id
}

resource "aws_route_table_association" "pharma_private-us-west-2b" {
  subnet_id      = aws_subnet.pharma_private-us-west-2b.id
  route_table_id = aws_route_table.pharma_private.id
}

resource "aws_route_table_association" "pharma_public-us-west-2a" {
  subnet_id      = aws_subnet.pharma_public-us-west-2a.id
  route_table_id = aws_route_table.pharma_public.id
}

resource "aws_route_table_association" "pharma_public-us-west-2b" {
  subnet_id      = aws_subnet.pharma_public-us-west-2b.id
  route_table_id = aws_route_table.pharma_public.id
}
