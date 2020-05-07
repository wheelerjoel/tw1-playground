
variable "vlan_pool_name" {
  description = "VLAN pool name"
  type = string
}
variable "alloc_Mode" {
  description = "VLAN pool allocation mode"
  type = string
  default = "static"
}