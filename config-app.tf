resource "aci_application_profile" "myWebsite" {
  tenant_dn = "${aci_tenant.myTenant.id}"
  name       = "my_website"
}

resource "aci_application_epg" "web" {
    application_profile_dn  = "${aci_application_profile.myWebsite.id}"
    name                            = "web"
    description                   = "this is the web epg created by terraform"
    flood_on_encap            = "disabled"
    fwd_ctrl                    = "none"
    has_mcast_source            = "no"
    match_t                         = "AtleastOne"
    name_alias                  = "web"
    pc_enf_pref                 = "unenforced"
    pref_gr_memb                = "exclude"
    prio                            = "unspecified"
    shutdown                    = "no"
  }


resource "aci_application_epg" "db" {
    application_profile_dn  = "${aci_application_profile.myWebsite.id}"
    name                            = "db"
    description                   = "this is the database epg created by terraform"
    flood_on_encap            = "disabled"
    fwd_ctrl                    = "none"
    has_mcast_source            = "no"
    match_t                         = "AtleastOne"
    name_alias                  = "db"
    pc_enf_pref                 = "unenforced"
    pref_gr_memb                = "exclude"
    prio                            = "unspecified"
    shutdown                    = "no"
  }
