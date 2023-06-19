provider "aws" {
    region = var.myregion
}

resource "aws_s3_bucket" "b" {

    bucket = var.mybucketuniquename
    acl = "private"
    tags = {
      Name = var.mybucketname
      Environment = var.myenvironment
    }
    versioning {
      enabled = var.enableversioning
    }
}
