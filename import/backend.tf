# Configure the backend to use S3 for storing Terraform state and DynamoDB for state locking
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-hcl"       # Replace with your S3 bucket name
    key            = "import/terraform/state.tfstate"   # Path where the state file will be stored in the S3 bucket
    region         = "us-east-1"                 # Region of your S3 bucket (adjust as needed)
    dynamodb_table = "dynamodb-lock-table-hcl1"  # Replace with your DynamoDB table name for state locking
    encrypt        = true                        # Ensure the state file is encrypted in S3
  }
}
