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
