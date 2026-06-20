# NovaPay Compliance Mapping: RBI + PCI-DSS v4.0

| Control Area | RBI / PCI Requirement | Pipeline Control | Evidence |
|---|---|---|---|
| Change Management | Tested and approved changes | PR review, CI gates, deployment approval | GitHub Actions logs |
| Segregation of Duties | Developer cannot directly deploy production | Branch protection + manual approval | Approval record |
| Vulnerability Management | Regular vulnerability assessment | SAST, Trivy, DAST | Scan reports |
| Secure SDLC | Secure software development | SAST + peer review + dependency scan | Pipeline logs |
| Audit Trail | Complete traceability | Commit SHA, build ID, image tag | Release record |
| Incident Response | Recovery and rollback process | Rollback runbook + alert rules | Incident playbook |
| Encryption | Data protection in transit/at rest | TLS policy + secrets management | Policy evidence |
| Third Party Risk | Dependency and license checks | SBOM + license scan | SBOM report |

## Automated Gates

- SAST: 0 Critical, maximum 2 High findings
- Dependency Scan: 0 Critical CVEs
- Container Scan: 0 Critical CVEs
- DAST: 0 Critical/High OWASP Top 10 findings
- OPA Policy: no privileged containers, resource limits required
- Deployment Verification: smoke test must pass

## Exception Process

Any failed control requires:

1. Risk acceptance note
2. CISO or Release Manager approval
3. Time-bound remediation
4. Evidence attached to release record
