terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Set your region here
}

# Placeholder for the EC2 instance to be imported
resource "aws_instance" "my_ec2_instance" {
  # Will be populated after import
}

# Placeholder for the S3 bucket to be imported
resource "aws_s3_bucket" "my_s3_bucket" {
  # Will be populated after import
}

# Import block for EC2 instance
import {
  to = aws_instance.my_ec2_instance
  id = "i-0123456789abcdef0"  # Replace with your EC2 instance ID
}

# Import block for S3 bucket
import {
  to = aws_s3_bucket.my_s3_bucket
  id = "my-existing-bucket"  # Replace with your S3 bucket name
}
