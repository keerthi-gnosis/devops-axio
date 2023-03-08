locals {
  region      = "us-east-2"
  environment = "dev"
}

provider "aws" {
  region = local.region
}

module "aws_default_vpc" {
  source = "./modules/vpc"
}

module "aws_security_group" {
  source              = "./modules/security_groups"
  security_group_name = "web-server-sg-${local.environment}"
  vpc_id              = module.aws_default_vpc.aws_default_vpc
}

module "web_server_instance" {
  source                 = "./modules/ec2_instances"
  ami                    = data.aws_ami.amzn_linux_ami.id
  instance_type          = var.instance_type
  key_name               = var.ec2_key_name
  vpc_security_group_ids = [data.aws_security_group.web_server_sg.id]
  environment            = local.environment
  for_each               = toset(data.aws_subnets.default_subnet.ids)
  subnet_id              = each.value
}

