resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name="developer"
    }
  
}
resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id
  tags={
    Name="DEveloper_IG"
  }
}
resource "aws_subnet" "dev" {
    tags = {
      Name="Developer_subnet"
    }
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.0.0/24"
  
}
resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
      Name="Developer_RT"
    }
    route {
        cidr_block="0.0.0.0/0"
        gateway_id=aws_internet_gateway.dev.id
    }
  
}
resource "aws_route_table_association" "name" {
  route_table_id=aws_route_table.dev.id
  subnet_id=aws_subnet.dev.id
}