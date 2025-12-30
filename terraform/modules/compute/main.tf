# 1. Jenkins Server
resource "aws_instance" "jenkins" {
  ami                    = "ami-0ecb62995f68bb549"
  instance_type          = "t2.medium" # Recommended for Jenkins
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.jenkins_sg_id]

  tags = { Name = "Jenkins-Server" }
}

# 2. SonarQube Server
resource "aws_instance" "sonarqube" {
  ami                    = "ami-0ecb62995f68bb549"
  instance_type          = "t2.medium" # SonarQube needs more RAM
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sonarqube_sg_id]

  tags = { Name = "SonarQube-Server" }
}

# 3. Nexus Server
resource "aws_instance" "nexus" {
  ami                    = "ami-0ecb62995f68bb549"
  instance_type          = "t2.medium" # Nexus requires decent memory
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.nexus_sg_id]

  tags = { Name = "Nexus-Server" }
}

# 4. Docker Host
resource "aws_instance" "docker" {
  ami                    = "ami-0ecb62995f68bb549"
  instance_type          = "t2.micro" 
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.docker_sg_id]

  tags = { Name = "Docker-Host" }
}