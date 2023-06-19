provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "Customsec" {
    name = "SecurityGroupByTerraform"

    ingress {
        description = "HTTPS"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
        ipv6_cidr_blocks = [var.ipv6_cidr_blocks]
    }

    ingress {
        
        description = "HTTPS"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
        ipv6_cidr_blocks = [var.ipv6_cidr_blocks]
    }


    ingress {
        description = "HTTPS"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
        ipv6_cidr_blocks = [var.ipv6_cidr_blocks]
    }


    egress {
        description = "HTTPS"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.cidr_blocks]
        ipv6_cidr_blocks = [var.ipv6_cidr_blocks]
    } 

    tags = {
        Name = var.mysectag
    }
  
}
