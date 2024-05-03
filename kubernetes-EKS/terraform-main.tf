provider "aws" {
  region = "ap-south-1"  # Change this to your desired region
}

resource "aws_instance" "ec2_instance" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  key_name               = "Mumbai-key" 
  subnet_id              = "subnet-0bd93047fde45c248"
  vpc_security_group_ids = ["sg-0224d89dfabcd2510"] 
  
  tags = {
    Name = "EKS-EC2"  # Add the desired instance name here
  }
}
