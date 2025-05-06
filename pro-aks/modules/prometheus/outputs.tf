output "prometheus_release_name" {
  value = helm_release.prometheus.name
}

output "prometheus_public_ip" {
  value       = data.kubernetes_service.prometheus_server.status[0].load_balancer[0].ingress[0].ip
  description = "The public IP address of the Prometheus server LoadBalancer service"
}

