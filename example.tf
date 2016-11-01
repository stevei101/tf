provider "aws" {
  access_key = "ACCES_ID"
  secret_key = "ACEESS_KEY"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
