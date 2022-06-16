# https://www.terraform.io/language/values/variables
variable "host_os" {
  type        = string
  default     = "unix" #or windows
  description = "sistema operacional"
}

variable "gh_access_token" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Github access token para criar o runner do actions"
}
