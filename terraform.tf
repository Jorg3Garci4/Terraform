terraform {
  cloud {
    organization = "nombre-de-tu-organizacion"

    workspaces {
      name = "nombre-de-tu-workspace"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.77.0"
    }
  }

  required_version = "~> 1.2"
}



