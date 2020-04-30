variable "tenant_name" {
  type = string
  default = "common"
}

variable "gateway_address" {
  type = string
}

variable "unicast_route" {
  description = "Enables or disables unicast routing for the BD (yes/no)"
  default     = "no"
}

variable "description" {
  description = "description for bridge domain"
  type = string
}

variable "name" {
  description = "name for bridge domain"
  type = string
}

variable "arp_flood" {
  description = "Enables or disables ARP flooding for the BD (yes/no)"
  type = string
}

variable "host_routing" {
  description = "Enables or disables Host routing advertisment (yes/no)"
  type = string
}
variable "l3out" {
  description = "Name L3Out for subnet"
  type = string
}
variable "vrf_name" {
  description = "Name VRF for subnet"
  type = string
}