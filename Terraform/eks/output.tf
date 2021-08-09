output "endpoint" {
  value = aws_eks_cluster.project_cluster.endpoint
}

output "kubeconfig-certificiate-authority-data" {
  value = aws_eks_cluster.project_cluster.certificate_authority.0.data
}

output "cluster_name" {
  value = aws_eks_cluster.project_cluster.name
}