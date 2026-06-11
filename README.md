# 🏦 NovaPay Digital Bank – DevSecOps CI/CD Platform

## 📌 Overview
NovaPay is a production-grade, cloud-native banking infrastructure designed using modern DevSecOps principles.  
It demonstrates a fully automated CI/CD pipeline, Kubernetes-based deployment, observability stack, and security compliance aligned with **RBI & PCI-DSS standards**.

---

## ⚙️ Architecture Highlights

- 🧱 Infrastructure as Code using Terraform
- ☸️ Kubernetes (Amazon EKS) Multi-AZ cluster
- 🐳 Docker containerized micro-application
- 🔁 CI/CD using GitHub Actions (8-stage pipeline)
- 📊 Observability with Prometheus + Grafana
- 🔐 Security scanning (Trivy + SAST simulation)
- 📜 Policy enforcement (OPA gate simulation)

---

## 🚀 CI/CD Pipeline (8 Stages)

1. Source Control & Trigger
2. Build & Compilation
3. Static Code Analysis (SAST)
4. Dependency & Container Security Scan (Trivy)
5. Container Build
6. Policy & Compliance Gate (OPA)
7. Deployment to EKS
8. Post Deployment Health Verification

---

## ☸️ Kubernetes Deployment

- Deployed on AWS EKS cluster
- Multi-AZ node groups
- LoadBalancer service for public access
- Rolling update deployment strategy

---

## 📊 Observability Stack

- Prometheus (Metrics collection)
- Grafana (Dashboards)
- Node Exporter (System metrics)
- kube-state-metrics (Cluster monitoring)

### DORA Metrics Tracked:
- Deployment Frequency
- Lead Time for Changes
- Change Failure Rate
- MTTR (Mean Time To Recovery)

---

## 🔐 Security & Compliance

- Container vulnerability scanning via Trivy
- Static analysis (SAST simulation stage)
- Policy gate using OPA logic
- Designed for RBI + PCI-DSS alignment

---

## 📁 Repository Structure
