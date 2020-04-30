provider "aci" {
  # credentials
  url      = "https://sandboxapicdc.cisco.com/"
  username = "admin"
  password = "ciscopsdt"
  insecure = true
  // proxy_url = "https://proxy_server:proxy_port"
}

module "epg1" {
source = "./epg"
app_profile_name = "test1"
bd_name = "test-bd-1"
name = "epg-test-1"
vlan_id = "222"
app_profile_description = "test-1-app-profile"

}
module "epg2" {
source = "./epg"
app_profile_name = "test2"
bd_name = "test-bd-2"
name = "epg-test-2"
vlan_id = "333"
app_profile_description = "test-2-app-profile"

}

module "epg3" {
source = "./epg"
app_profile_name = "test3"
bd_name = "test-bd-3"
name = "epg-test-3"
vlan_id = "1231"
app_profile_description = "test-3-app-profile"

}

