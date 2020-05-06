resource "aci_bridge_domain" "bd" {
  tenant_dn                   = data.aci_tenant.example.id
  description                 = var.description
  name                        = var.name
  relation_fv_rs_ctx          = var.vrf_name
  optimize_wan_bandwidth      = "no"
  annotation                  = "tag_bd"
  arp_flood                   = var.arp_flood
  ep_clear                    = "no"
  ep_move_detect_mode         = "garp"
  host_based_routing          = var.host_routing
  intersite_bum_traffic_allow = "yes"
  intersite_l2_stretch        = "yes"
  ip_learning                 = "yes"
  limit_ip_learn_to_subnets   = "yes"
  mcast_allow                 = "yes"
  multi_dst_pkt_act           = "bd-flood"
  name_alias                  = "alias_bd"
  bridge_domain_type          = "regular"
  unicast_route               = var.unicast_route
  unk_mac_ucast_act           = "flood"
  unk_mcast_act               = "flood"
  vmac                        = "not-applicable"
}
data "aci_tenant" "example" {
  name  = "common"
}
// how do I create a BD without an associated subnet?
//
resource "aci_subnet" "subnet" {
  bridge_domain_dn = aci_bridge_domain.bd.id
  ip               = var.gateway_address
  preferred        = "yes"
  scope            = "public"
  description      = "This subnet is created by terraform for NewCo"
//  relation_fv_rs_bd_to_out = var.l3out
}