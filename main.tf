provider "aci" {
  # credentials
  url      = "https://sandboxapicdc.cisco.com/"
  username = "admin"
  password = "ciscopsdt"
  insecure = true
  // proxy_url = "https://proxy_server:proxy_port"
}

module "fabric_policy" {
  source = "./fabric-std"
}

