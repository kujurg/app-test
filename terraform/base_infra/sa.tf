resource "google_service_account" "jenkins" {
  account_id   = "jenkins-sa"
  display_name = "jenkins service account"
}