# Create a VPC Network
resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false # We will manually create subnets
}

# Create a subnet for the vpc network
resource "google_compute_subnetwork" "subnet_1" {
  name          = "my-subnet-1"
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.0.0/24" # Subnet IP range
}

# Create a firewall rule to allow HTTP traffic
resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow from anywhere
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["35.235.240.0/20"] # Allow from anywhere
}



# Optional: Output the VPC and Subnet details
output "vpc_network_name" {
  value = google_compute_network.vpc_network.name
}

output "subnet_1_name" {
  value = google_compute_subnetwork.subnet_1.name
}