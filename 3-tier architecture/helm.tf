provider "helm" {
  kubernetes {
    host                   = azurerm_kubernetes_cluster.main.kube_config[0].host
    client_certificate     = base64decode(azurerm_kubernetes_cluster.main.kube_config[0].client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.main.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.main.kube_config[0].cluster_ca_certificate)
  }
}
resource "helm_release" "ingress" {
  name       = "nginx-ingress"
  repository = "<https://kubernetes.github.io/ingress-nginx>"
  chart      = "ingress-nginx"
  namespace  = "ingress-basic"
  values = [
    file("${path.module}/values/ingress-values.yaml")
  ]
}
