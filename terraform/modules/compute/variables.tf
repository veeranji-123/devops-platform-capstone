variable "public_subnet_id" {
  description = "Subnet where servers will live"
  type        = string
}

variable "jenkins_sg_id" {
  type = string
}

variable "sonarqube_sg_id" {
  type = string
}

variable "nexus_sg_id" {
  type = string
}

variable "docker_sg_id" {
  type = string
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "ami_id" {
  description = "ami id to use" 
  type = string
}