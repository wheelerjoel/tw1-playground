provider "aci" {
  # credentials
  url      = "https://sandboxapicdc.cisco.com/"
  username = "admin"
  password = "ciscopsdt"
  insecure = true
  // proxy_url = "https://proxy_server:proxy_port"
}

// for testing sections of code
module "bd1" {
source = "./TW1/bd"
description = "NewCo-bridge-domain-1"
name = "NewCo-prod-bd"
vrf_name = "NewCo-Prod"
arp_flood = "yes"
host_routing = "yes"
unicast_route = "yes"
gateway_address = "192.168.1.1/24"
}