provider "google" {
  credentials = "account.json"
  project     = "${var.google_project_id}"
}

resource "google_container_cluster" "cluster" {

  project            = "${var.google_project_id}"
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  location           = "${var.location}"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.node_count}"

  node_config {
    machine_type = "n1-standard-2"
  }
}
