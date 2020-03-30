terraform {
  backend "gcs" {
    bucket  = "terraform-backend-huseyin"
    prefix  = "gcp/kubernetes"
    project = "my-project-3-271504"
  }
}
