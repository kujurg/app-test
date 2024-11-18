resource "google_project_iam_member" "jenkins" {
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.jenkins.email}"
}