terraform {
  required_version = "~> 1.7.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.98"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.2.1"
    }
  }
}
