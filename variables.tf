# https://www.terraform.io/language/values/variables
variable "host_os" {
  type        = string
  default     = "unix" #or windows
  description = "sistema operacional"
}
