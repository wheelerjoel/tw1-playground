data "aci_tenant" "example" {
  name  = var.tenant_name
}
resource "aci_vrf" "vrf" {
  tenant_dn              = data.aci_tenant.example.id
  name                   = var.vrf_name
  annotation             = "tag_vrf"
  bd_enforced_enable     = var.bd_enforced
  ip_data_plane_learning = var.ip_data_learning
  knw_mcast_act          = "permit"
  name_alias             = var.name_alias
  pc_enf_dir             = var.pc_enforce_direction
  pc_enf_pref            = var.pc_enforce_pref
}