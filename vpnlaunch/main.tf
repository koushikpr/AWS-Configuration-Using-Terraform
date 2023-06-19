provider "aws" {
    region = var.myregion
  
}



# CREATE A VPC 
resource "aws_vpc" "myvpc" {
    cidr_block = var.vpccidr
    tags = {
        Name = var.myvpctag
    }
}

# CREATE A PUBLIC SUBNET
resource "aws_subnet" "PublicSubnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.publiccidr
}

# CREATE A PRIVATE SUBNET
resource "aws_subnet" "PrivateSubnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.privatecidr
}

# CREATE IGW
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.myvpc.id  
}

# CREATE A ROUTING TABLE
resource "aws_route_table" "PublicRouteTable" {
    vpc_id = aws_vpc.myvpc.id
    route  {
        cidr_block = var.routetablecidr
        gateway_id = aws_internet_gateway.igw.id
    }
}


# CREATE A ROUTING TABLE ASSOCATION
resource "aws_route_table_association" "PublicRTass" {
    subnet_id = aws_subnet.PublicSubnet.id
    route_table_id = aws_route_table.PublicRouteTable.id

  
}