resource "helm_release" "nginx" {
  name = "nginx-ingress"

  repository = "https://helm.nginx.com/stable"
  chart      = "nginx-ingress"

  create_namespace = true
  namespace        = "nginx-ingress"
}

resource "helm_release" "cert_manager" {
  name = "cert-manager"

  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"

  create_namespace = true
  namespace        = "cert-manager"

  values = [
    "${file("helm-values/cert-manager.yaml")}"
  ]

  set {
    name  = "installCRDs"
    value = "true"
  }

  set {
    name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = var.cert_manager_irsa_arn
  }
}


resource "helm_release" "external_dns" {
  name = "external-dns"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "external-dns"
  version    = "6.28.5"


  create_namespace = true
  namespace        = "external-dns"

  values = [
    "${file("helm-values/external-dns.yaml")}"
  ]

  set {
    name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = var.external_dns_irsa_arn
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "7.8.26"

  namespace        = "argo-cd"
  create_namespace = true

  values = [
    "${file("helm-values/argo-cd.yaml")}"
  ]
}
