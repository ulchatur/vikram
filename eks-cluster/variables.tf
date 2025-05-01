variable "aws_region" {
  description = "AWS region for  EKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "node_group_name" {
  description = "EKS worker node group name"
  type        = string
}

variable "node_instance_type" {
  description = "EKS worker node instance type"
  type        = string
}

variable "desired_capacity" {
  description = "EKS node group desired capacity"
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "EKS node group minimum capacity"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "EKS node group maximum capacity"
  type        = number
  default     = 3
}

