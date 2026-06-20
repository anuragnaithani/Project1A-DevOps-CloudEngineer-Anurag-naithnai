# ERRATA: Deliberate Technical Errors and Corrections

## Error 1: Kubernetes RollingUpdate alone is not equal to complete zero-downtime banking deployment

Correction:
A production-grade banking deployment should include blue-green and canary strategies with health checks, traffic switching, automated rollback, and post-deployment verification.

Implemented Evidence:
- k8s/blue-green/blue-green-deployment.yaml
- k8s/canary/canary-deployment.yaml
- runbooks/rollback-runbook.md

## Error 2: Using latest container image tag in production is unsafe

Correction:
Production deployments must use immutable image tags such as Git SHA or SemVer build metadata. The latest tag should not be used for regulated production workloads.

Implemented Evidence:
- GitHub Actions builds image using github.sha
- README documents immutable artifact traceability

## Error 3: Terraform state files must not be committed

Correction:
Terraform state may contain sensitive infrastructure values and must be stored in a secure remote backend such as S3 with DynamoDB locking and encryption.

Implemented Evidence:
- .gitignore blocks *.tfstate and *.tfvars files
- local terraform.tfstate files removed from root submission
