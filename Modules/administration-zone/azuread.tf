################################################################################
## AZURE AD
################################################################################

data "azuread_client_config" "current" {}

# create service principal

resource "azuread_application" "application" {
  display_name = "inf-${var.slug}-admin"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "application" {
  application_id = azuread_application.application.application_id
  owners         = [data.azuread_client_config.current.object_id]
}

resource "azuread_application_password" "pwd" {
  application_object_id = azuread_application.application.object_id
  display_name          = "Terraform Created"
  end_date              = "2025-01-01T00:00:00Z"
}
