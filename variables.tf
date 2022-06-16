# https://www.terraform.io/language/values/variables
variable "host_os" {
  type        = string
  default     = "unix" #or windows
  description = "sistema operacional"
}

variable "github_workflows_token" {
  type        = string
  default     = ""
  description = "Token para configurar o self hosted GitHub Workflows"
}

variable "github_pat" {
  type        = string
  default     = ""
  description = "Github personal access token - Para healthcheck do github workflows"
}

variable "is_github_workflows_instance" {
  type        = bool
  default     = true
  description = "Indica se esta instância deve rodar o github workflows "
}

variable "repo_or_org_name" {
  type        = string
  default     = ""
  description = "Organização ou repositório que vai rodar esse workflow. Ex: minha-org ou minha-org/meu-repo"
}
