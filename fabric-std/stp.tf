resource "aci_rest" "bpduguard_enabled" {
  path       = "/api/node/mo/uni/infra.json"
  class_name = "stpIfPol"
  content = {
    "name" = "NewCo-bpduguard-enabled"
    "ctrl" = "bpdu-guard"
  }
}