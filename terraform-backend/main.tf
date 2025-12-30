# S3 Bucket for State
resource "aws_s3_bucket" "terraform_state" {
  bucket = "shistrangerthings" # Replace this

  # Prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# DynamoDB for Locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "ashustatelocky" # Replace this
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}