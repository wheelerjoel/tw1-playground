variable "aaep_name" {
  type = string
}

variable "aaep_description" {
  type = string
  default = "Danger Will Robinson!"
}

variable "bd_domain_name" {
  description = "name for domain to associate with AAEP"
  type = list (string)
  default = []
}