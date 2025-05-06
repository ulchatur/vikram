resource "helm_release" "prometheus" {
  name             = var.release_name
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "prometheus"
  namespace        = var.namespace
  create_namespace = true

  values = [
    yamlencode({
      server = {
        service = {
          type = "LoadBalancer"
        }
      }
    })
  ]

  depends_on = [var.helm_dependency]
}

# Get the LoadBalancer service to retrieve external IP
data "kubernetes_service" "prometheus_server" {
  metadata {
    name      = "${helm_release.prometheus.name}-server"
    namespace = var.namespace
  }

  depends_on = [helm_release.prometheus]
}

