resource "aci_application_profile" "app_profile" {
  tenant_dn   = data.aci_tenant.example.id
  name        = var.app_profile_name
  description = var.app_profile_description
}
data "aci_tenant" "example" {
  name  = "common"
}

resource "aci_application_epg" "epg" {
  application_profile_dn = aci_application_profile.app_profile.id
  relation_fv_rs_bd      = var.bd_name
  name                   = "${var.name}-${var.vlan_id}"
  description            = var.description
  annotation             = "tag_epg"
  exception_tag          = "0"
  flood_on_encap         = var.flood_on_encap
 // has_mcast_source       = "no"
 // is_attr_based_e_pg     = "no"
 // match_t                = "AtleastOne"
 // name_alias             = "alias_epg"
  pc_enf_pref            = var.epg_isolation
  pref_gr_memb           = var.pref_group_member
  prio                   = "unspecified"
  shutdown               = var.shutdown
}
