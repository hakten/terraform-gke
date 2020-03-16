variable "region" {
  default = "us-central1"
}

variable "cluster_name" {
  default = "kube-cluster"
}

variable "node_count" {
  default = "3"
}

variable "google_project_id" {
  default = "hypnotic-camp-271218"
}

variable "cluster_version" {
  default = "1.14.10-gke.17"
}
