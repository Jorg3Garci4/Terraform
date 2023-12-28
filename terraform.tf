terraform {
  cloud {
    organization = "LATAM_AIRLINES"

    workspaces {
      name = "TESTER_JORGAR"
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
