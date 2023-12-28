terraform {
  cloud {
    organization = "LATAM_AIRLINES"
    workspaces {
      name = "create_clusterk8"
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

