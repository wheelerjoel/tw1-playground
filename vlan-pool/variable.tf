
variable "vlan_pool_name" {
  description = "VLAN pool name"
  type = string
}
variable "alloc_mode" {
  description = "VLAN pool allocation mode"
  type = string
  default = "static"
}