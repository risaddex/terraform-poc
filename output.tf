# https://www.terraform.io/language/values/outputs
output "dev_ip" {
  value       = aws_instance.dev_node.public_ip
  sensitive   = false # se deve ser informação sentitiva ou não
  description = "ip de desenvolvimento"
  depends_on  = []
}

output "dev_dns" {
  value       = aws_instance.dev_node.public_dns
  sensitive   = false # se deve ser informação sentitiva ou não
  description = "DNS publico"
  depends_on  = []
}

output "elastic_ip" {
  value       = aws_eip.eip.public_ip
  sensitive   = false
  description = "IP Elástico"
  depends_on  = []
}
