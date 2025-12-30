output "jenkins_ip" {
  value = module.compute.jenkins_public_ip
}

output "sonarqube_ip" {
  value = module.compute.sonarqube_public_ip
}

output "nexus_ip" {
  value = module.compute.nexus_public_ip
}

output "docker_ip" {
  value = module.compute.docker_public_ip
}