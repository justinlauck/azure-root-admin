locals {
  administration_zones = {
    platform = {
      name                  = "Platform Administration Zone"
      management_group_name = "Platform"
      slug                  = "platform"
    }
    application = {
      name                  = "Landing Zones Administration Zone"
      management_group_name = "Landing Zones"
      slug                  = "landing-zones"
    }
  }
}
