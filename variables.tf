variable "name" {
  default = "ClusterGK8"
}
variable "project" {
  default = "smiling-drake-403912"
}
variable "region" {
  default = "us-central1"
}
variable "initial_node_count" {
  default = 3
}
variable "machine_type" {
  default = "n1-standard-1"
}
variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}