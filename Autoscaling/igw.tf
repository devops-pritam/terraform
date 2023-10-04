# Create Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Project = "Pritam-Autoscale-project"
    Name    = "internet gateway"
  }
}
