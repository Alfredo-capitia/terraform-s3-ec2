
output "instance_id" {
  value       = aws_instance.my_instance.public_ip
  description = "instancia criado com sucesso"
}