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

// trying to create BD without a subnet
//module "bd5" {
//source = "./bd"
//description = "NewCo-net-centric-1"
//name = "NewCo-net-centric-1"
//vrf_name = "NewCo-Prod"
//arp_flood = "yes"
//}
