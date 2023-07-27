provider "aws" {
region     = "ap-south-1"
}
resource "aws_instance" "web-server" {
ami           = "ami-008b85aa3ff5c1b02"
instance_type = "t2.micro"

  tags = {
    Name = "terraform-jenkins12"
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-s3-backend2707"
    key    = "terraform-state/terraform.tfstate"
    region = "ap-south-1"
    # Other optional configurations (e.g., encrypt, dynamodb_table, profile, role_arn, etc.)
    dynamodb_table = "terraform-state-lock"
  }
}
