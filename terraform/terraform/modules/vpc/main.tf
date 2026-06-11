resource "aws_vpc" "novapay_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = { Name = "novapay-vpc" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.novapay_vpc.id
  tags   = { Name = "novapay-igw" }
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id                  = aws_vpc.novapay_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name                                         = "novapay-public-subnet-a"
    "kubernetes.io/cluster/novapay-prod-cluster" = "shared"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = aws_vpc.novapay_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name                                         = "novapay-public-subnet-b"
    "kubernetes.io/cluster/novapay-prod-cluster" = "shared"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.novapay_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public_rt.id
}
