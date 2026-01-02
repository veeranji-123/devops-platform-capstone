# DevOps Platform Capstone Project 



## Project Purpose

The goal of this project is to build, break, and fix a complete DevOps platform using a **"No-GUI" approach**. By utilizing Infrastructure as Code (IaC) and Configuration Management, we ensure that the entire environment—from networking to the CI/CD pipeline—is **100% reproducible**, consistent, and documented.


## High-Level Architecture

This platform follows a modular design to ensure a clear **separation of concerns**:

1. **Infrastructure Layer**: Isolated networking and dedicated compute instances provisioned via Terraform.
2. **Configuration Layer**: Automated software installation and system hardening using Ansible roles.
3. **Pipeline Layer**: A Jenkins-driven CI/CD process that integrates quality gates, artifact management, and containerization.
4. **Observability Layer**: End-to-end traceability from the final Docker image back to the specific Git commit.

## Toolchain Overview 

| Function | Tool |
| --- | --- |
| **Infrastructure Provisioning** | **Terraform** (Remote backend with state locking) |
| **Configuration Management** | **Ansible** (Dynamic inventory & idempotent roles) |
| **CI/CD Orchestration** | **Jenkins** (Declarative pipelines) |
| **Static Code Analysis** | **SonarQube** (Quality Gate enforcement) |
| **Artifact Repository** | **Nexus** (Versioned storage) |
| **Containerization** | **Docker** (Multi-stage builds & registry) |
| **Build Tool** | **Maven** (Application lifecycle) |

## Repository Structure 

- `terraform/`: Infrastructure modules (Network, Security, Compute).
- `ansible/`: Playbooks and roles for server configuration.
- `jenkins/`: Jenkinsfile and pipeline configuration.
- `app/`: Application source code.
- `docs/`: Proof of work, screenshots, and technical defense.

---




for setting up Ansible-Ec2 plugin Configuration in local machine (windows WSL or Ubuntu)

install python pip3 - `sudo apt install python3-pip`


install Ansible -  `pip3 install ansible`

configure aws cli   --  `aws configure` (access key & secretkey)


`pip3 install botocore --break-system-package`
`pip3 install boto3 --break-system-package`




for ansible vault:

`EDITOR=nano ansible-vault create group_vars/all/vault.yml`

`ansible-playbook -i inventory/my_aws_ec2.yml site.yml --ask-vault-pass`
