################################################################################
## GITHUB
################################################################################

# create github rep

resource "github_repository" "repo" {
  name        = "azure-${var.slug}-admin"
  description = "Terraform for deploying the ${var.name}"
  visibility  = "public"
}

# add the github actions secrets

resource "github_actions_secret" "tenant_id" {
  repository      = github_repository.repo.name
  secret_name     = "tenant_id"
  plaintext_value = data.azuread_client_config.current.tenant_id
}

resource "github_actions_secret" "client_id" {
  repository      = github_repository.repo.name
  secret_name     = "client_id"
  plaintext_value = azuread_application.application.application_id
}

resource "github_actions_secret" "client_secret" {
  repository      = github_repository.repo.name
  secret_name     = "client_secret"
  plaintext_value = azuread_application_password.pwd.value
}

# create github pipeline
