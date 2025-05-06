module "aks" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  node_count          = var.node_count
  vm_size             = var.vm_size
}

module "prometheus" {
  source        = "./modules/prometheus"
  release_name  = "prometheus"
  namespace     = "prometheus"
  helm_dependency = module.aks
}

