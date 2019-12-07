provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_s3_bucket" "rpmBucket" {
  bucket = "rpmBucket"
  acl    = "private"

  tags = {
    Name        = "rpmBucket"
    ManagedByTerraform = "true"
    Environment = "Dev"
  }
}
