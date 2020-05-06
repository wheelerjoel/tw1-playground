resource "aci_lacp_policy" "lacp_enabled" {
  description = "LACP Enabled"
  name        = "NewCo-LACP-Active"
  annotation  = "tag_lacp"
  ctrl        = "fast-sel-hot-stdby,graceful-conv,susp-individual"
  max_links   = "16"
  min_links   = "1"
  mode        = "active"
}

resource "aci_lacp_policy" "lacp_disabled" {
  description = "LACP Disabled"
  name        = "NewCo-LACP-Disabled"
  annotation  = "tag_lacp"
  ctrl        = "fast-sel-hot-stdby,graceful-conv"
  max_links   = "16"
  min_links   = "1"
  mode        = "off"
}