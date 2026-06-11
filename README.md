# NovaPay Digital Bank: DevSecOps CI/CD Platform

## 🚀 Executive Summary
NovaPay is a production-grade, RBI-compliant banking infrastructure designed to transition from manual SSH-based deployments to a **Zero-Downtime, DevSecOps-driven CI/CD platform**. This project reduces MTTR from 4.5 hours to < 15 minutes and enforces automated compliance gates mapped to RBI Master Direction and PCI-DSS v4.0.

## 🏗️ Architecture & Stack
- **Infrastructure:** AWS EKS (Multi-AZ), Terraform 1.7+
- **CI/CD:** GitHub Actions (8-stage canonical pipeline)
- **Deployment:** ArgoCD, Blue-Green/Canary strategies, RollingUpdates
- **Observability:** Prometheus, Grafana (DORA Metrics: DF, LT, CFR, MTTR)
- **Security:** Trivy (Vulnerability Scan), OPA (Policy Gates), SAST/DAST simulation

## ⚙️ The 8-Stage Canonical Pipeline
| Stage | Description | Tooling |
| :--- | :--- | :--- |
| 1. Source | Trunk-based, Signed Commits | Git, GPG |
| 2. Build | Reproducible Multi-stage Build | Gradle, Docker |
| 3. SAST | Custom Banking Quality Rules | SonarQube |
| 4. Security Scan | SBOM + CVE Gating (Crit/High) | Trivy, Syft |
| 5. Contract Test | Consumer-Driven API Testing | Pact |
| 6. DAST | Runtime Security Analysis | OWASP ZAP |
| 7. Policy Gate | RBI/PCI-DSS Compliance | OPA, Kyverno |
| 8. Deployment | Zero-Downtime Verification | EKS, Istio |

## 📊 Observability & Compliance
Mapped to **RBI Master Direction on IT Risk** and **PCI-DSS v4.0 Requirements 6.2–6.5**.
- **Alerting:** Automated rollback triggers for SEV-1/SEV-2 incidents.
- **Monitoring:** Real-time cluster health and SRE-grade DORA metrics.

## 🖼️ Evidence Gallery
- [Pipeline Architecture](docs/01-pipeline-architecture/architecture.md)
- [Deployment Proofs](evidence/screenshots/)
- [DORA Dashboards](dashboards/grafana/)

## 📝 Compliance Audit (Errata)
- Findings and corrections for technical errors identified in Part A, C, and D are documented in [ERRATA.md](ERRATA.md).

---
*Project administered by Zetheta Algorithms Private Limited.*
