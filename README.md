# NovaPay Digital Bank — Zero-Downtime DevSecOps CI/CD Platform

## Executive Summary

NovaPay Digital Bank is a fictional RBI-licensed digital bank migrating from manual SSH-based deployments to a production-grade DevSecOps CI/CD platform.

This project implements an 8-stage CI/CD pipeline with security scanning, compliance gates, zero-downtime deployment, automated rollback, observability, and audit-ready documentation.

## Business Problem

NovaPay currently has:

- Manual SSH deployments
- 4.5-hour MTTR
- Fortnightly release cycle
- No automated compliance scanning
- 17 RBI audit non-conformances
- No reliable rollback strategy

## Target Outcomes

- Commit-to-production time under 2 hours
- Five-nines availability target
- Automated security and compliance gates
- Blue-green and canary deployment support
- Automated rollback based on production metrics
- Expand-contract database migration strategy
- RBI and PCI-DSS aligned evidence trail

## 8-Stage Canonical Pipeline

| Stage | Purpose | Tools |
|---|---|---|
| 1 | Source Control & Trigger | GitHub, Branch Protection |
| 2 | Build & Unit Test | Docker, npm/Gradle |
| 3 | SAST | SonarQube |
| 4 | Dependency & Container Scan | Trivy |
| 5 | Integration & Contract Testing | API tests, Pact-style validation |
| 6 | DAST | OWASP ZAP |
| 7 | Policy & Compliance Gates | OPA/Rego, RBI/PCI checks |
| 8 | Deployment & Verification | Kubernetes, Blue-Green, Canary, Smoke Tests |

## Zero-Downtime Deployment Strategy

This project supports two deployment models:

### Blue-Green Deployment

Two production environments run side-by-side:

- Blue: current stable production
- Green: new release candidate

Traffic is switched only after health checks, smoke tests, and compliance verification pass.

### Canary Deployment

Traffic is gradually shifted to the new version:

- 5% traffic
- 25% traffic
- 50% traffic
- 100% traffic

If error rate, latency, or pod health crosses the rollback threshold, the release is automatically reverted.

## Database Migration Strategy

NovaPay uses the expand-contract pattern:

1. Expand: Add backward-compatible schema changes.
2. Migrate: Backfill data safely using batch jobs.
3. Contract: Remove old schema only after all services are migrated.

## Compliance Mapping

The pipeline includes controls mapped to:

- RBI IT Governance, Risk, Controls and Assurance expectations
- PCI-DSS v4.0 secure software development and vulnerability management controls
- Segregation of duties through approval gates and restricted deployment access

## Observability

Monitoring is implemented using:

- Prometheus
- Grafana
- Kubernetes metrics
- Alert rules for rollback triggers
- DORA metrics dashboard

## Automated Rollback Triggers

Rollback is triggered when:

- HTTP 5xx error rate exceeds threshold
- p99 latency increases beyond baseline
- Kubernetes pods enter CrashLoopBackOff
- Health checks fail repeatedly
- CPU or memory saturation continues beyond safe limits

## Repository Structure

```text
NovaPay-CI-CD/
├── .github/workflows/
├── app/
├── compliance/
├── database/migrations/
├── docs/
├── evidence/
├── k8s/
├── monitoring/
├── policies/
├── runbooks/
├── scripts/
└── terraform/
Project Status

This repository is designed as an assessment-ready DevSecOps architecture project for a banking-grade zero-downtime CI/CD pipeline.
