data "aci_tenant" "tenant" {
  name  = var.tenant_name
}
resource "aci_vrf" "vrf" {
  tenant_dn              = data.aci_tenant.tenant.id
  name                   = var.vrf_name
  annotation             = "tag_vrf"
  bd_enforced_enable     = "no"
  ip_data_plane_learning = "enabled"
  knw_mcast_act          = "permit"
  name_alias             = "alias_vrf"
  pc_enf_dir             = "ingress"
  pc_enf_pref            = "enforced"
}