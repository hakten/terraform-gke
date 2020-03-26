 resource "null_resource" "get_kubectl" {
    provisioner "local-exec" {
    when    = "create"
    command = "curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl"
  }
}

 resource "null_resource" "chmod_kubectl" {
 depends_on = ["null_resource.get_kubectl"]
    provisioner "local-exec" {
    when    = "create"  
    command = "sudo chmod +x kubectl"
  }
}

 resource "null_resource" "move_kubectl" {
 depends_on = ["null_resource.chmod_kubectl"]
    provisioner "local-exec" {
    when    = "create"  
    command = "mv kubectl /bin"
  }
}