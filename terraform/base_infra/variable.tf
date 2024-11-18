variable "project_id" {
  type        = string
  description = "project ID of GCP account"
}

variable "region" {
  type        = string
  description = "GCP region for the resources"
}

variable "scopes_oauth" {
  type        = list(string)
  description = "Oauth scopes for the resources"
}

variable "jenkins_machine_type" {
  type        = string
  description = "machine type for jenkins server"
}