variable "tenant_name" {
  type = string
  default = "common"
}
variable "vrf_name" {
  description = "name of VRF"
  type = string
}

variable "bd_enforced" {
  description = "Bridge Domain enforced enable"
  type = string
  default = "no"
}

variable "ip_data_learning" {
  description = "enforce IP data learning either enabled or disabled"
  type = string
  default = "enabled"
}
variable "pc_enforce_direction" {
  description = "enforce polciy control direction either ingress or egress"
  type = string
  default = "ingress"
}

variable "pc_enforce_pref" {
  description = "enforce polciy control preference either enforced or unenforced"
  type = string
  default = "enforced"
}

variable "name_alias" {
  description = "name the alias for the VRF"
  type = string
  default = ""
}