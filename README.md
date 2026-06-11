# 🏦 NovaPay Digital Bank: DevSecOps CI/CD Platform

## 🚀 Executive Summary
NovaPay is a production-grade, cloud-native banking infrastructure designed using modern DevSecOps principles. This project demonstrates a fully automated, 8-stage CI/CD pipeline, Kubernetes-based deployment (AWS EKS), observability stack, and security compliance aligned with RBI & PCI-DSS standards.

---

## 🎯 Key Architecture Highlights
- **Infrastructure:** AWS EKS Multi-AZ cluster provisioned via **Terraform**.
- **CI/CD:** 8-stage automated pipeline using **GitHub Actions**.
- **Deployment:** Zero-downtime strategy using Kubernetes RollingUpdates.
- **Observability:** Real-time monitoring stack (Prometheus + Grafana).
- **Compliance:** Automated policy gates (OPA) and security scanning (Trivy).

---

## 🚀 The 8-Stage Canonical Pipeline
| Stage | Focus | Tooling |
| :--- | :--- | :--- |
| 1 | Source Control & Trigger | GitHub Actions |
| 2 | Build & Compilation | Gradle/Docker |
| 3 | Static Analysis (SAST) | SonarQube |
| 4 | Dependency Security Scan | Trivy |
| 5 | Container Build | Docker |
| 6 | Container Security Scan | Trivy/ECR |
| 7 | Policy & Compliance Gate | OPA/Kyverno |
| 8 | Deployment & Verification | AWS EKS |

---

## 📊 Evidence Gallery
### 1. 8-Stage DevSecOps Pipeline
![Pipeline](evidence/screenshots/8-Stage DevSecOps Pipeline.png)

### 2. Live Kubernetes App
![Kubernetes App](evidence/screenshots/Live Kubernetes App.png)

### 3. LoadBalancer Service (Public Access)
![LoadBalancer Service](screenshot/3-lb-service.png)

### 4. Elite DORA Metrics Dashboard
![DORA Dashboard](screenshot/Elite_DORA_Dashboards.png)

### 5. Monitoring Stack (Prometheus/Grafana)
![Monitoring Pods](screenshot/monitoring-pods.png)

### 6. Docker Build Proof
![Docker Images](screenshot/docker-images.png)

---

## 📁 Repository Structure
```text
NovaPay-CI-CD/
├── .github/workflows/   # CI/CD Pipeline YAMLs
├── app/                 # Application source code
├── terraform/           # IaC modules
├── dashboards/          # Grafana JSON exports
├── docs/                # Deliverable specifications
├── evidence/            # Project screenshots & validation
├── policies/            # OPA Rego policies
├── runbooks/            # Incident response & ops docs
├── ERRATA.md            # Technical deviation log
└── README.md            # This file
