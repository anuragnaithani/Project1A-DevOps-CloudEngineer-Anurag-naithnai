# RBI and PCI-DSS Compliance Mapping

## RBI IT Governance Mapping

| Area | Pipeline Control |
|---|---|
| Change management | Pull request review, CI gates, deployment runbook |
| Segregation of duties | Release approval separated from development |
| Vulnerability assessment | SAST, DAST, dependency scan, container scan |
| Audit trail | Commit SHA, workflow run ID, scan report, approval evidence |
| Incident management | Incident playbook and rollback runbook |
| Business continuity | Blue-green, canary, automated rollback |

## PCI-DSS v4.0 Mapping

| Requirement Area | Pipeline Control |
|---|---|
| Secure software development | SAST and peer review |
| Vulnerability management | Trivy scan and CVE blocking |
| Web app protection | OWASP ZAP DAST |
| Change control | Deployment approval and rollback plan |
| Logging and monitoring | Prometheus alerts and pipeline evidence |
