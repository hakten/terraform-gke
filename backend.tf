terraform {
  backend "gcs" {
    bucket      = "terraform-gcp-remote-backend"
    prefix      = "kubernetescluster"
  }
}