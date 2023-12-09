# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}


# public subnet 1
resource "aws_subnet" "pub-sub-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "pub-sub-1"
  }
}


# public subnet 2
resource "aws_subnet" "pub-sub-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "pub-sub-2"
  }
}





# private subnet 1
resource "aws_subnet" "pri-sub-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "pri-sub-1"
  }
}





# private subnet 2
resource "aws_subnet" "pri-sub-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "pri-sub-1"
  }
}  