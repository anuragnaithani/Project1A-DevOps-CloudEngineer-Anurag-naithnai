# Environment Promotion Model

NovaPay uses a four-environment promotion workflow.

| Environment | Purpose | Data | Approval |
|---|---|---|---|
| Development | Feature testing | Synthetic data | Automatic |
| Staging | Integration, DAST, contract testing | Anonymised data | Automatic after gates |
| Pre-Production | UAT and compliance verification | Masked production-like data | Tech Lead |
| Production | Live banking workload | Production data | Release Manager + SRE Lead |

## Promotion Gates

Dev to Staging:
- Unit tests pass
- SAST pass
- Docker image created

Staging to Pre-Production:
- Integration tests pass
- Contract tests pass
- DAST pass
- Trivy scan pass

Pre-Production to Production:
- Compliance mapping verified
- Database migration validated
- CAB or Release Manager approval
- Rollback plan confirmed
