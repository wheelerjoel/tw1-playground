resource "aci_lldp_interface_policy" "lldp_interface_policy" {
  description = "LLDP Policy"
  name        = "NewCo-LLDP-ENABLED"
  admin_rx_st = "enabled"
  admin_tx_st = "enabled"
  annotation  = "tag_lldp"
  name_alias  = "alias_lldp"
} 