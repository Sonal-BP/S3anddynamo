terraform {
  backend "s3" {
    bucket         = "your-s3-bucket-name"       
    key            = "terraform/state"       
    region         = "us-east-2"               
    encrypt        = true                       
    dynamodb_table = "terraform-lock"    
  }
}
