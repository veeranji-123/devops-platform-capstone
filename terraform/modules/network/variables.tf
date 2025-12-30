variable "vpc_cidr" {
    description = "the ip range for entire VPC"
    type = string
    default = "10.0.0.0/16"
  
}

variable "public_subnet_cidr" {
  description = "the ip range for public subnet"
  type = string
  default = "10.0.1.0/24"

}

variable "availability_zone" {
  description = "the AZ where subnet will be created"
  type = string
  default = "us-east-1a"

}