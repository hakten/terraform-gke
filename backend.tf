terraform {
  backend "gcs" {
    credentials = "hypnotic-camp-271218-6a1005267a03.json"
    bucket      = "terraform-gcp-remote-backend"
    prefix      = "kubernetescluster"
  }
}