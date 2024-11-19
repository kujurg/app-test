
resource "google_project_iam_member" "gke" {
  project = var.project_id
  role = "roles/artifactregistry.reader"
  member = "serviceAccount:${google_service_account.gke.email}"
}

# resource "google_artifact_registry_repository_iam_binding" "gke" {
#   repository = var.artifact_registory_name
#   location   = var.region
#   role       = "roles/artifactregistry.reader"

#   members = [
#     "serviceAccount:${google_service_account.gke.email}"
#   ]
#    depends_on = [
#     azurerm_storage_account.st
#  ]
# }