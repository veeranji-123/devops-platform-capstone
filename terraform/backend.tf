terraform {
  backend "s3" {
    bucket         = "shistrangerthingsfrfrfrfr" 
    key            = "devops-platform/terraform.tfstate"
    region         = "us-east-1"                   
    dynamodb_table = "ashustatelockykatta"        
    encrypt        = true                          
  }
}