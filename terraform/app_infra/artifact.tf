resource "google_artifact_registry_repository" "webapp" {
  location = var.region
  repository_id = var.artifact_registory_name
  description = "image repository for web app"
  format = "DOCKER"
  docker_config {
    immutable_tags = true
  }
}

