module "aaep1" {
  source           = "./aaep"
  aaep_name        = "NewCo-vmware-AAEP"
  aaep_description = "NewCo-VMware-Production"
//  bd_domain_name      = "NewCo-vmware-PhysDom"
}

module "aaep2" {
  source           = "./aaep"
  aaep_name        = "NewCo-BM-AAEP"
  bd_domain_name      = "NewCo-BM-PhysDom"
}

module "aaep3" {
  source           = "./aaep"
  aaep_name        = "NewCo-vmware-AAEP-Test"
  aaep_description = "NewCo-VMware-UAT"
  bd_domain_name = "NewCo-vmware-PhysDom,NewCo-BM-PhysDom"
}

