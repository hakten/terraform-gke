provider "google" {
  credentials = "${file("~/.google/angular-expanse-271218-8781ddcbab63.json")}"
  project     = "${var.google_project_id}"
}

resource "google_container_cluster" "cluster" {
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  location           = "us-central1-a"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.node_count}"
  project            = "${var.google_project_id}"

  node_config {
    machine_type = "n1-standard-2"
  }
}
