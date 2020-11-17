
resource "aci_tenant" "conmurph_intro_to_terraform" {
  name        = "conmurph_intro_to_terraform"    
}

resource "aci_bridge_domain" "bd_for_subnet" {
  tenant_dn   = "${aci_tenant.conmurph_intro_to_terraform.id}"
  name        = "bd_for_subnet"
  description = "This bridge domain is created by the Terraform ACI provider"
}

resource "aci_subnet" "demosubnet" {
  parent_dn                    = "${aci_bridge_domain.bd_for_subnet.id}"
  ip                                  = "172.16.1.1/24"
  scope                               = "private"
  description                         = "This subject is created by Terraform v3"
}


