variable "project_id" {
  type = string
  description = "project ID of GCP account"
}

variable "region" {
  type = string
  description = "GCP region for the resources"
}

variable "artifact_registory_name" {
  type = string
  description = "image name for the webapp repository"
}

variable "base_vpc_network" {
  type = string
  description = "base vpc network name"
  default = "my-vpc-network"
}

variable "base_vpv_subnetwork" {
  type = string
  description = "base vpc subnetwork name"
  default = "my-subnet-1"
}

variable "cluster_name" {
  type = string
  description = "gke cluster name"
}

variable "primary_nodepool_machine_type" {
  type = string
  description = "machine type for the primary node pool"
}

variable "secondary_nodepool_machine_type" {
  type = string
  description = "machine type for the primary node pool"
}


variable "disk_size_gb" {
  type = number
  default = 10
  description = "disk size for the node"
}

variable "primary_node_count" {
  type = number
  default = 1
  description = "node count for the pool"
}

variable "secondary_node_count" {
  type = number
  default = 2
  description = "node count for the pool"
}

variable "oauth_scopes" {
  type = list(string)
  description = "Oauth scopes for the resources"
  default = ["https://www.googleapis.com/auth/cloud-platform"]
}