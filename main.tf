provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"

  instance_count = 1
  key_name       = var.key_name
  ec2_sg         = "allow_ssh_${terraform.workspace}"
  ami            = var.ami
  instance_type  = var.instance_type
  tags = {
    Name = "ec2-${terraform.workspace}"
  }
}

output "instance_name" {
  value = "EC2 created for workspace: ${terraform.workspace}"
}

output "instance_ids" {
  value = module.ec2.instance_ids
}
