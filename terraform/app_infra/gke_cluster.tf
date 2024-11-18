resource "google_container_cluster" "webapp" {
  name = var.cluster_name
  location = "${var.region}-a"

  remove_default_node_pool = true
  initial_node_count = 1
  deletion_protection = false

  node_config {
    machine_type = var.primary_nodepool_machine_type
    disk_size_gb = var.disk_size_gb
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0" 
      display_name = "public"
    }
  }

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes = true
    master_ipv4_cidr_block = "10.13.0.0/28"
  }

  network = var.base_vpc_network
  subnetwork = var.base_vpv_subnetwork
}