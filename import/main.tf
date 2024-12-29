provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "K8s_hands_on" {
  # You can leave the resource block empty for now or add some basic attributes later
  # Placeholder for the EC2 instance.
  # Add required fields like `ami` and `instance_type` after the import
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with actual AMI ID
  instance_type = "t2.micro"              # Replace with actual instance type
}
