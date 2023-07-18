provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  count = 5
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags= {
    Name = "My EC2 instance"
  }
}

resource "aws_instance" "Linux" {
  count = 5
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  tags= {
    Name = "Linux"
  }
}