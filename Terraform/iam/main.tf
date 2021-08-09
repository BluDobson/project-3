resource "aws_iam_role" "node_iam_role" {
  name = "node_iam_role"
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "node_iam_role-AmazonEKSWorkerNodePolicy" {
  policy_arn = var.eks_worker_node_policy
  role       = aws_iam_role.node_iam_role.name
}

resource "aws_iam_role_policy_attachment" "node_iam_role-AmazonEKS_CNI_Policy" {
  policy_arn = var.eks_cni_policy
  role       = aws_iam_role.node_iam_role.name
}

resource "aws_iam_role_policy_attachment" "node_iam_role-AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = var.ec2_container_registry_readonly_policy
  role       = aws_iam_role.node_iam_role.name
}

resource "aws_iam_role" "cluster_iam_role" {
  name = "cluster_iam_role"
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumerRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "cluster_iam_role-AmazonEKSClusterPolicy" {
  policy_arn = var.eks_cluster_policy
  role       = aws_iam_role.cluster_iam_role.name
}

resource "aws_iam_role_policy_attachment" "cluster_iam_role-AmazonEKSServicePolicy" {
  policy_arn = var.eks_service_policy
  role       = aws_iam_role.cluster_iam_role.name
}