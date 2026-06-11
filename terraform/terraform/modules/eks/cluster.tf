resource "aws_eks_cluster" "novapay_cluster" {
  name     = "novapay-prod-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [var.public_subnet_a_id, var.public_subnet_b_id]
  }

  depends_on = [aws_iam_role_policy_attachment.cluster_policy]
}
