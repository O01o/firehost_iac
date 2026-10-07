terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

module "security" {
  source = "./security"

  project_id = var.project_id
  github_owner = var.github_owner
  deployments  = var.deployments
}

module "hosting" {
  source = "./hosting"

  project_id = var.project_id
  region     = var.region
  name       = var.name
  deployments = var.deployments
}