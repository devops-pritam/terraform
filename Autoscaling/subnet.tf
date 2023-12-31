# Create Public Subnet1
resource "aws_subnet" "pub_sub1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.pub_sub1_cidr_block
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Project = "Pritam-Autoscale-project"
    Name    = "public_subnet1"

  }
}

# Create Public Subnet2

resource "aws_subnet" "pub_sub2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.pub_sub2_cidr_block
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Project = "Pritam-Autoscale-projectp"
    Name    = "public_subnet2"
  }
}

# Create Private Subnet1
resource "aws_subnet" "prv_sub1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.prv_sub1_cidr_block
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = false

  tags = {
    Project = "Pritam-Autoscale-project"
    Name    = "private_subnet1"
  }
}

# Create Private Subnet2
resource "aws_subnet" "prv_sub2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.prv_sub2_cidr_block
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = false

  tags = {
    Project = "Pritam-Autoscale-project"
    Name    = "private_subnet2"
  }
}
