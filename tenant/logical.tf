resource "aci_tenant" "tenant" {
  name        = var.tenant_name
  description = "This tenant is created by terraform"
}