variable "tenant_name" {
  type = string
  default = "common"
}
variable "description" {
  description = "description of EPG"
  type = string
  default = ""
}

variable "name" {
  description = "name for EPG"
  type = string
}

variable "app_profile_description" {
  description = "description of Application Profile"
  type = string
}

variable "app_profile_name" {
  description = "Application Profile name to place EPG under"
  type = string
}

variable "vlan_id" {
  description = "VLAN ID associated to EPG"
  type = string
}
variable "bd_name" {
  description = "name for bridge domain associated to EPG"
  type = string
}