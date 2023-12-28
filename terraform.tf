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

provider "google" {
  credentials = file(var.google_credentials_path)
  project     = var.project
  region      = var.region
}

resource "google_container_cluster" "my_cluster" {
  name     = var.cluster_name
  location = var.region

  node_pool {
    name       = "default-node-pool"
    node_count = 1
  }
}

