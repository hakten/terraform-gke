provider "google" {
  credentials = "${file("hypnotic-camp-271218-32b1f2b1bdc8.json")}"
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
