terraform {
  backend "s3" {
    bucket         = "son-happy-not-when-u-zoosm-in"
    key            = "devops-platform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ashustddsdsatelockys-lock-in"
    encrypt        = true
  }
}