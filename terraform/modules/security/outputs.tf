output "jenkins_sg_id" {
  value = aws_security_group.jenkins_sg.id
}

output "sonarqube_sg_id" {
  value = aws_security_group.sonarqube_sg.id
}

output "nexus_sg_id" {
  value = aws_security_group.nexus_sg.id
}

output "docker_sg_id" {
  value = aws_security_group.docker_sg.id
} 