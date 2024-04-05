
data "azurerm_management_group" "root" {
  name = var.root_management_group_id
}

module "zone" {
  source   = "./Modules/administration-zone"
  for_each = local.administration_zones

  root_management_group_id = data.azurerm_management_group.root.id

  name                  = each.value["name"]
  slug                  = each.value["slug"]
  management_group_name = each.value["management_group_name"]
}

output "zones" {
  value     = module.zone
  sensitive = true
}
