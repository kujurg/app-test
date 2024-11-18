resource "google_container_node_pool" "secondary_nodepool" {
  name = "secondary"
  location = "${var.region}-a"
  cluster = google_container_cluster.webapp.name
  node_count = var.secondary_node_count

  autoscaling {
    min_node_count = 1
    max_node_count = 2
  }

  node_config {
    machine_type = var.secondary_nodepool_machine_type
    disk_size_gb = var.disk_size_gb
    service_account = google_service_account.gke.email
    oauth_scopes = var.oauth_scopes
  }

}