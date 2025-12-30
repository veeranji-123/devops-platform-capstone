terraform {
  backend "s3" {
    bucket         = "shistrangerthings" 
    key            = "devops-platform/terraform.tfstate"
    region         = "us-east-1"                   
    dynamodb_table = "ashustatelocky"        
    encrypt        = true                          
  }
}