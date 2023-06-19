variable myregion {
    type = string
    default = "us-east-1"  
}


variable myvpcid {
    type = string
    default = "vpc-06c6400634ac855ba"
  
}

variable mysectag {
    type = string
    default = "TerraformSecuritygroup"

}



variable cidr_blocks {
    type = string
    default = "0.0.0.0/0"
  
}

variable ipv6_cidr_blocks {
    type = string
    default = "::/0"
  
}