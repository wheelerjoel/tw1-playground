module "vrf1" {
  source           = "./vrf"
  vrf_name         = "NewCo-non-Prod"
  ip_data_learning = "disabled"
  name_alias       = "NewCo-UAT"
}

module "vrf2" {
  source   = "./vrf"
  vrf_name = "NewCo-Prod"
}

module "vrf3" {
  source   = "./vrf"
  vrf_name = "NewCo-DMZ"
}

