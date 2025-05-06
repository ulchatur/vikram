variable "release_name" {
  type    = string
  default = "prometheus"
}

variable "namespace" {
  type    = string
  default = "prometheus"
}

variable "helm_dependency" {
  description = "Dependencies like Helm provider or AKS"
  type        = any
}

