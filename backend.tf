terraform {
  backend "gcs" {
    bucket      = "terraform-backend-huseyin"
    prefix      = "kubernetescluster"
  }
}