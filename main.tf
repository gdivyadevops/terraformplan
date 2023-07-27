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
