variable vpccidr {
    type = string
    default = "10.0.0.0/16"
}

variable routetablecidr {
    type = string
    default = "0.0.0.0/0"
}

variable publiccidr {
    type = string
    default = "10.0.1.0/24"
  
}

variable privatecidr {
    type = string
    default = "10.0.2.0/24"
  
}


variable myvpctag {
    type = string
    default = "itsjustaname"
  
}

variable myregion {
    type = string
    default = "us-east-1"
  
}