terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.11.1"
    }
  }
  backend "gcs" {
    bucket = "deeplearning-terraform-state"
    prefix = "testenv/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

