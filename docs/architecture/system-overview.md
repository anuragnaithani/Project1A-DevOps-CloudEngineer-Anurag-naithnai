# NovaPay System Architecture Overview
NovaPay is a high-availability, RBI-compliant digital banking platform deployed on AWS EKS. 
The architecture follows a Microservices pattern with a focus on Security and Zero-Downtime deployments.

## Core Components
- **Compute:** AWS EKS (Kubernetes 1.29)
- **Infrastructure:** Terraform (IaC)
- **Deployment:** GitOps via ArgoCD
- **Compliance:** OPA/Kyverno Admission Controllers
- **Observability:** Prometheus, Grafana, and Loki


