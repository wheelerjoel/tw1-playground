resource "aci_attachable_access_entity_profile" "aaep" {
description = var.aaep_description
name        = var.aaep_name
//annotation  = "tag_entity"
//name_alias  = "%s"
relation_infra_rs_dom_p = [data.aci_physical_domain.example]
//relation_infra_rs_dom_p = "NewCo-vmware-PhysDom"
}

data "aci_physical_domain" "example" {
  name = [var.bd_domain_name]
}
