terraform {
  backend "gcs" {
    bucket  = "terraform-cluster"
    prefix  = "google/kubernetescluster"
    project = "hypnotic-camp-271218"
  }
}