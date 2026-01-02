# Generate your Key locally
# ssh-keygen -t rsa -b 4096 -f ~/.ssh/capstone_key
# This generates capstone_key (private key) and capstone_key.pub (public key).

resource "aws_key_pair" "aws_key" {
  key_name   = "proj-key"
  public_key = file("~/.ssh/capstone_key.pub") # Terraform reads your local public key
}



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
  key_name         = aws_key_pair.aws_key.key_name
  ami_id           = "ami-0ecb62995f68bb549"
  public_subnet_id = module.network.public_subnet_id
  jenkins_sg_id    = module.security.jenkins_sg_id
  sonarqube_sg_id  = module.security.sonarqube_sg_id
  nexus_sg_id      = module.security.nexus_sg_id
  docker_sg_id     = module.security.docker_sg_id
}