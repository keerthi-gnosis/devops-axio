output "web_server_public_ips" {
  value = module.web_server_instance.ec2_public_ips
}