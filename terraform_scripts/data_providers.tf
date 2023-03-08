data "aws_vpc" "default_vpc_id" {
  id = module.aws_default_vpc.aws_default_vpc
}

data "aws_security_group" "web_server_sg" {
  id = module.aws_security_group.aws_security_group
}

data "aws_ami" "amzn_linux_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}

data "aws_subnets" "default_subnet" {
  # vpc_id = data.aws_vpc.default_vpc_id.id
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc_id.id]
  }
}