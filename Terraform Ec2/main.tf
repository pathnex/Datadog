# Configure AWS Provider
provider "aws" {
  region = "ap-south-1" # Change to your preferred region
}

resource "aws_instance" "pathnex" {
  ami                    = "ami-0f559c3642608c138"  # Update it with ami (if needed)
  instance_type          = "t3.micro"               # Update it with the ec2 instance type (if needed))
  count                  = 3                        # Update it with the number of ec2 you wnat to create
  key_name               = "Pathnex-ec2-key"
  subnet_id              = "subnet-060e30fbb2ff857" # Update it with your Subnet id
  vpc_security_group_ids = ["sg-006c76c984d9e09"]   # Update it with your security group
  tags = {
    Name = "pathnex-ec2-1"
  }
}

output "ec2_public_ips" {
  value = aws_instance.pathnex[*].public_ip
}