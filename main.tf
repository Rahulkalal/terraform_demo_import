# AWS provider configuration
provider "aws" {
  region = "us-east-1"  # Set the AWS region where you want to create resources
}

# Define the AMI and Instance Type directly within main.tf
variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0e2c8caa4b6378d8c"  # Example: Update this with the AMI ID you want
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"  # You can change to another instance type if needed
}

# EC2 instance resource definition
resource "aws_instance" "example" {
  ami           = var.ami            # The AMI ID, referenced from the variable above
  instance_type = var.instance_type  # Instance type, referenced from the variable above

  tags = {
    Name = "Terraform-Demo-Instance"  # Instance name tag
  }
}

# Output the EC2 instance ID after deployment
output "instance_id" {
  value = aws_instance.example.id
}


