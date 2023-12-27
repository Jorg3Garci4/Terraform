terraform {

  cloud {
    organization = "LATAM_AIRLINES"

    workspaces {
      name = "TESTER_JORGAR"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/google"
      version = "~> 5.10.0""
    }
  }

  required_version = "~> 1.2"
}
