provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "tets_import" {
  # You can leave the resource block empty for now or add some basic attributes later
  # Placeholder for the EC2 instance.
  # Add required fields like `ami` and `instance_type` after the import
  ami           = "ami-0d11f9bfe33cfbe8b"  # Replace with actual AMI ID
  instance_type = "t2.micro"              # Replace with actual instance type
}
