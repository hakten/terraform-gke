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

 resource "null_resource" "get_kubectl" {
    provisioner "local-exec" {
    command = "curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl"
  }
}

 resource "null_resource" "chmod_kubectl" {
 depends_on = ["null_resource.get_kubectl"]
    provisioner "local-exec" {
    command = "sudo chmod +x kubectl"
  }
}

 resource "null_resource" "move_kubectl" {
 depends_on = ["null_resource.chmod_kubectl"]
    provisioner "local-exec" {
    command = "mv kubectl /bin"
  }
}