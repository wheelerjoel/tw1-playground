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
// for testing sections of code
module "bd1" {
source = "./bd"
description = "NewCo-prod-bd-1"
name = "NewCo-prod-bd-1"
vrf_name = "NewCo-Prod"
arp_flood = "yes"
host_routing = "yes"
unicast_route = "yes"
gateway_address = "192.168.1.1/20"
l3out = "NewCo-internal"
}
module "bd2" {
source = "./bd"
description = "NewCo-non-prod-bd-1"
name = "NewCo-non-prod-bd"
vrf_name = "NewCo-non-Prod"
arp_flood = "yes"
host_routing = "yes"
unicast_route = "yes"
gateway_address = "172.16.12.1/20"
l3out = "NewCo-internal"
}
module "bd3" {
source = "./bd"
description = "NewCo-prod-pcf"
name = "NewCo-prod-pcf"
vrf_name = "NewCo-Prod"
arp_flood = "yes"
host_routing = "yes"
unicast_route = "yes"
gateway_address = "192.168.16.1/24"
l3out = "NewCo-internal"
}
module "bd4" {
source = "./bd"
description = "NewCo-non-prod-pcf"
name = "NewCo-non-prod-pcf"
vrf_name = "NewCo-non-Prod"
arp_flood = "yes"
host_routing = "yes"
unicast_route = "yes"
gateway_address = "172.16.32.1/24"
l3out = "NewCo-internal"
}

module "vrf1" {
source = "./vrf"
vrf_name = "NewCo-non-Prod"

}
module "vrf2" {
source = "./vrf"
vrf_name = "NewCo-Prod"
}
