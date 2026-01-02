# 1. Jenkins Server
resource "aws_instance" "jenkins" {
  ami                    = var.ami_id
  instance_type          = "t2.medium" # Recommended for Jenkins
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.jenkins_sg_id]

  tags = { Name = "Jenkins-Server" }
}

# 2. SonarQube Server
resource "aws_instance" "sonarqube" {
  ami                    = var.ami_id
  instance_type          = "t2.medium" # SonarQube needs more RAM
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sonarqube_sg_id]

  tags = { Name = "SonarQube-Server" }
}

# 3. Nexus Server
resource "aws_instance" "nexus" {
  ami                    = var.ami_id
  instance_type          = "t2.medium" # Nexus requires decent memory
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.nexus_sg_id]

  tags = { Name = "Nexus-Server" }
}

# 4. Docker Host
resource "aws_instance" "docker" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.docker_sg_id]

  tags = { Name = "Docker-Host" }
}