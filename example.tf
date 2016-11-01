provider "aws" {
  access_key = "AKIAI3SYFZ3UEWZAGX2A"
  secret_key = "LJQMzMY02azUGe9gsEY2GZqi4UxHyOAJoeHS4+EB"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
