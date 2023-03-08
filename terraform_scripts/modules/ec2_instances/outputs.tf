output "ec2_public_dns" {
 value = aws_instance.web_server_instance.public_dns 
}