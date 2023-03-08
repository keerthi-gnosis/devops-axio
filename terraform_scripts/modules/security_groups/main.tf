resource "aws_security_group" "web_server_sg" {
  name = var.security_group_name
  vpc_id = var.vpc_id
  ingress {
    description = "Allow Port 80"
    to_port = 80
    from_port = 80
    cidr_blocks = [ "0.0.0.0/0" ]
    protocol = "tcp"
  }
  ingress {
    description = "Allow Port 22"
    to_port = 22
    from_port = 22
    cidr_blocks = [ "0.0.0.0/0" ]
    protocol = "tcp"
  }
  ingress {
    description = "Block all"
    to_port = 0
    from_port = 0
    cidr_blocks = [ "0.0.0.0/0" ]
    protocol = -1
  }
}