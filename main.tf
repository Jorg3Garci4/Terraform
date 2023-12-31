provider "google" {
  credentials = file("./smiling-drake-403912-cd8f78eb5e1f.json")
  project     = var.project
  region      = var.location
}

resource "google_container_cluster" "default" {
  name        = "gke-cluster-${lower(var.cluster_name)}"
  project     = var.project
  description = "Demo GKE Cluster"
  location    = var.location

  enable_legacy_abac       = true 
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count
}

resource "google_container_node_pool" "default" {
  name       = "${lower(var.cluster_name)}-node-pool"
  project    = var.project
  location   = var.location
  cluster    = google_container_cluster.default.name
  node_count = 2

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}