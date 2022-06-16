# https://www.terraform.io/language/values/outputs
output "dev_ip" {
  value       = aws_instance.github_actions_instance.public_ip
  sensitive   = false # se deve ser informação sentitiva ou não
  description = "ip de desenvolvimento"
  depends_on  = []
}

output "dev_dns" {
  value       = aws_instance.github_actions_instance.public_dns
  sensitive   = false # se deve ser informação sentitiva ou não
  description = "DNS publico"
  depends_on  = []
}
