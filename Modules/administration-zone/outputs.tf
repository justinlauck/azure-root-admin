
output "app_id" {
  value = azuread_application.application.id
}
output "app_password" {
  value = azuread_application_password.pwd.value
}
output "app_name" {
  value = azuread_application.application.display_name
}
