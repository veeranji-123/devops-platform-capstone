# create custom VPC

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true

    tags = {
      Name = "devops-platform-vpc"
    }
  
}

#create internet gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id

    tags = {
      Name = "devops-platform-igw"
    }
  
}

#create public subnet

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "devops-platform-public-subnet"
  }
}

#create route table

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0" #traffic heading to internet
    gateway_id = aws_internet_gateway.igw.id

  }
  tags = {
    Name = "devops-platform-route-table"
  }

}

# 5. Associate Route Table with Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}