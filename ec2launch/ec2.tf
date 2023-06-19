resource "aws_instance" "web" {
    ami = var.myimageid
    instance_type = "t3.micro"
    count = "1"
    tags = {
        Name = "EC2 by Terraform"
    }
  
}