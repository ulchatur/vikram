output "aks_cluster_name" {
  value       = module.aks.cluster_name
  description = "Name of the AKS cluster"
}

output "aks_kube_config" {
  value       = module.aks.kube_config
  sensitive   = true
  description = "Kubeconfig for the AKS cluster"
}

output "prometheus_public_ip" {
  value       = module.prometheus.prometheus_public_ip
  description = "Public IP of Prometheus server"
}

