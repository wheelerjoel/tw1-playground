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

variable "flood_on_encap" {
  description = "set flooding on encap enable/disabled"
  type = string
  default = "disabled"
}

variable "shutdown" {
  description = "set shutdown yes/no"
  type = string
  default = "no"
}

variable "pref_group_member" {
  description = "set prefered group membership exclude/include"
  type = string
  default = "include"
}
variable "epg_isolation" {
  description = "set Intra EPG isolation enforced/unenforced"
  type = string
  default = "unenforced"
}
