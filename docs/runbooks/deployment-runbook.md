# Production Deployment Runbook
## Pre-Deployment Checklist
1. Verify CI/CD pipeline green status.
2. Ensure OPA policy validation passed.
3. Check Load Balancer Health (Status: Healthy).

## Rollback Procedure
If any deployment metric deviates > 5% from baseline:
1. Trigger automatic rollback: `kubectl rollout undo deployment/novapay-app`
2. Notify on-call engineer via PagerDuty/Slack.
