resource "aci_vlan_pool" "vlan-pool" {
 name  = var.vlan_pool_name
//  allocMode  = "example"
  alloc_mode  = "static"
  annotation  = "example"
  name_alias  = "example"
}

data "aci_vlan_pool" "example" {
  name  = var.vlan_pool_name
  alloc_mode  = "static"
}

resource "aci_ranges" "vlan-pool-range" {

  vlan_pool_dn  = data.aci_vlan_pool.example.id

  _from  = "2500"

  to  = "2501"
  alloc_mode  = "static"
  annotation  = "example"
  from  = ""
  name_alias  = "NewCo-example"
  role  = "example"
}