
################################################################################
## AZURE
################################################################################

# management group

resource "azurerm_management_group" "mg" {
  display_name               = var.management_group_name
  name                       = var.slug
  parent_management_group_id = var.root_management_group_id
}

# management group permissions

resource "azurerm_role_assignment" "mg_owner" {
  role_definition_name = "Owner"
  principal_id         = azuread_service_principal.application.id
  scope                = azurerm_management_group.mg.id
}
