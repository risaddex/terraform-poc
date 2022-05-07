# https://www.terraform.io/language/values/outputs
output "dev_ip" {
  value       = aws_instance.dev_node.public_ip
  sensitive   = false # se deve ser informação sentitiva ou não
  description = "ip de desenvolvimento"
  depends_on  = []
}
