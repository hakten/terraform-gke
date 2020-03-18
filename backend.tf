terraform {
  backend "gcs" {
    bucket  = "terraform-cluster"
    prefix  = "google/kubernetescluster"
  }
}