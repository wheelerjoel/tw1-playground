module "epg1" {
  source                  = "./epg"
  app_profile_name        = "Newco-prod"
  bd_name                 = "NewCo-prod-bd-1"
  name                    = "Newco-prod-web"
  description = "NewCo-prod-web"
  vlan_id                 = "222"
  app_profile_description = "NewCo production"
}

module "epg2" {
  source                  = "./epg"
  app_profile_name        = "Newco-prod"
  bd_name                 = "NewCo-prod-bd-1"
  name                    = "NewCo-prod-app"
  description = "NewCo-prod-app"
  vlan_id                 = "333"
  app_profile_description = "NewCo production"
}

module "epg3" {
  source                  = "./epg"
  app_profile_name        = "NewCo-UAT"
  bd_name                 = "NewCo-non-prod-bd"
  name                    = "NewCo-UAT"
  description = "NewCo-UAT"
  vlan_id                 = "1231"
  app_profile_description = "NewCo UAT environment"
}

