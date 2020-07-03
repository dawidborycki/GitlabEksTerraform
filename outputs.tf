output "Cluster_name" {
  description = "Kubernetes cluster name"
  value       = var.CLUSTER_NAME
}

output "Endpoint" {
  description = "API URL. Endpoint for EKS control plane"
  value       = data.aws_eks_cluster.cluster.endpoint
}

output "Certificate" {
  description = "CA Certificate"
  value       = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}

output "Token" {
  description = "Service token"
  value       = data.aws_eks_cluster_auth.cluster.token
}