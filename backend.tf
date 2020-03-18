terraform {
  backend "gcs" {
    credentials = "hypnotic-camp-271218-e7f2b1244c7e.json"
    bucket      = "terraform-gcp-remote-backend"
    prefix      = "kubernetescluster"
  }
}