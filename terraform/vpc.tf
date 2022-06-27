resource "aws_vpc" "cluster_vpc" {
  cidr_block           = var.cidir_block_vpc
  tags                 = {
    Name               = var.name
  }
}

resource "aws_subnet" "private" {
  vpc_id               = aws_vpc.cluster_vpc.id
  cidr_block           = var.cidir_block_subnet
  availability_zone    = var.region
  tags                 = {
  Name                 = var.subnet_name
  }
}

resource "aws_route_table" "private" {
  vpc_id               = aws_vpc.cluster_vpc.id
  tags                 = {

    Name               = var.subnet_name
  }
  route {
    cidr_block         = var.cidir_block_route_table
    gateway_id         = aws_internet_gateway.igw_challenger.id
  }
}
resource "aws_route_table_association" "private" {
  subnet_id            = var.subnet_name.id
  route_table_id       = var.subnet_name.route_table_id
}

resource "aws_internet_gateway" "igw_challenger" {
  vpc_id               = var.cluster_vpc.id
  tags                 = {
    Name               = var.name
  }

}