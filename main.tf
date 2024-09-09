resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
 
  versioning_configuration {
    status = "Enabled"
  }
}
 
# DynamoDB Table for state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  hash_key     = "LockID"
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags = {
    Name = "terraform-lock"
  }
}
