module "network" {
  source = "./modules/network"
  # These match the variables you defined in modules/network/variables.tf
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}

module "compute" {
  source           = "./modules/compute"
  public_subnet_id = module.network.public_subnet_id
  jenkins_sg_id    = module.security.jenkins_sg_id
  sonarqube_sg_id  = module.security.sonarqube_sg_id
  nexus_sg_id      = module.security.nexus_sg_id
  docker_sg_id     = module.security.docker_sg_id
}