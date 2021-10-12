
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.tech_server.public_ip
}