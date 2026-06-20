# NovaPay System Architecture Overview

NovaPay uses a cloud-native DevSecOps architecture for regulated banking workloads.

## Components

- GitHub for source control
- GitHub Actions for CI/CD automation
- Docker for containerized builds
- Trivy for dependency and image scanning
- SonarQube for SAST
- OWASP ZAP for DAST
- OPA/Rego for policy gates
- Kubernetes for deployment
- Prometheus and Grafana for observability

## Deployment Architecture

NovaPay supports:

- Blue-green deployment for instant traffic switching
- Canary deployment for progressive release
- Automated rollback based on error rate, latency, and pod health
- Expand-contract database migration for zero downtime

## Availability Design

- Minimum 3 replicas
- LoadBalancer service
- Readiness probes
- Resource requests and limits
- Monitoring alerts
- Incident and rollback runbooks
