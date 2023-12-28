output "endpoint" {
  value = google_container_cluster.cluser_gke.endpoint
}
output "master_version" {
  value = google_container_cluster.cluser_gke.master_version
}
