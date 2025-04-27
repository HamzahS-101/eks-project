resource "null_resource" "cluster_issuer" {
  provisioner "local-exec" {
    command = <<EOT
      aws eks update-kubeconfig --region ${var.region} --name ${var.cluster_name} &&
      kubectl apply -f ./modules/helm/cluster-issuer.yaml
    EOT
  }

  depends_on = [
    helm_release.cert_manager
  ]
}

