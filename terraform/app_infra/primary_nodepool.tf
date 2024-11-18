resource "google_container_node_pool" "primary_nodepool" {
  name = "primary"
  location = "${var.region}-a"
  cluster = google_container_cluster.webapp.name
  node_count = var.primary_node_count

  node_config {
    machine_type = var.primary_nodepool_machine_type
    disk_size_gb = var.disk_size_gb
    service_account = google_service_account.gke.email
    oauth_scopes = var.oauth_scopes
  }

}