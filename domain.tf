module "domain-1" {
  source           = "./domain"
  domain_name      = "NewCo-BM-PhysDom"
}

module "domain-2" {
  source           = "./domain"
  domain_name      = "NewCo-vmware-PhysDom"
}
