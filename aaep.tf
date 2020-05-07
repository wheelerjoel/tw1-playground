module "aaep1" {
  source           = "./aaep"
  aaep_name        = "NewCo-vmware-AAEP"
  aaep_description = "NewCo-VMware-Production"
//  domain_name      = "NewCo-vmware-PhysDom"
}

module "aaep2" {
  source           = "./aaep"
  aaep_name        = "NewCo-BM-AAEP"
}

module "aaep3" {
  source           = "./aaep"
  aaep_name        = "NewCo-vmware-AAEP-Test"
  aaep_description = "NewCo-VMware-UAT"
}

