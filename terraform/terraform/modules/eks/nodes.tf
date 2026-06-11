resource "aws_eks_node_group" "worker_nodes" {
  cluster_name    = aws_eks_cluster.novapay_cluster.name
  node_group_name = "novapay-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = [var.public_subnet_a_id, var.public_subnet_b_id]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["t3.medium"]

  depends_on = [
    aws_iam_role_policy_attachment.node_policy,
    aws_iam_role_policy_attachment.cni_policy,
    aws_iam_role_policy_attachment.ecr_readonly
  ]
}
