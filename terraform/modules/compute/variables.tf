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