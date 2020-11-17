#configure provider with your cisco aci credentials or update with certificates
provider "aci" {
  username = "${var.apic_username}"
  password = "${var.apic_password}"
  url      = "${var.apic_url}"
  insecure = true
}
