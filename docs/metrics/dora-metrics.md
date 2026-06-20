# NovaPay DORA Metrics

| Metric | Target |
|---|---|
| Deployment Frequency | Multiple deployments per day |
| Lead Time for Changes | Under 2 hours |
| Change Failure Rate | Less than 5% |
| MTTR | Under 15 minutes for rollback-supported incidents |

## Measurement

- Deployment frequency from GitHub Actions production deployments
- Lead time from commit timestamp to deployment timestamp
- Change failure rate from rollback count / total deployments
- MTTR from incident detection to service restoration

## Evidence

Evidence should be stored in:

- evidence/pipeline/
- evidence/monitoring/
- evidence/scan-reports/
