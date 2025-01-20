provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_import" {
  # You can leave the resource block empty for now or add some basic attributes later
  # Placeholder for the EC2 instance.
  # Add required fields like `ami` and `instance_type` after the import
  ami           = "ami-09e143e99e8fa74f9"  # Replace with actual AMI ID
  instance_type = "t2.micro"              # Replace with actual instance type
}
