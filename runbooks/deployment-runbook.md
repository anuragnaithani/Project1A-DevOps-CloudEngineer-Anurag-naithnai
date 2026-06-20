# NovaPay Deployment Runbook

## Purpose

This runbook defines the controlled production deployment process for NovaPay Digital Bank.

## Pre-Deployment Checklist

- Pull request approved
- SAST gate passed
- Dependency scan passed
- Container scan passed
- Contract tests passed
- DAST scan passed
- OPA policy gate passed
- RBI and PCI compliance mapping verified
- Database migration reviewed
- Rollback plan confirmed
- Release Manager and SRE Lead approval completed

## Blue-Green Deployment Steps

1. Deploy new release to green environment.
2. Run smoke tests against green.
3. Verify application health.
4. Verify Prometheus alerts are normal.
5. Switch service traffic from blue to green.
6. Monitor error rate, latency, and pod health.
7. Keep blue environment ready for rollback.

## Canary Deployment Steps

1. Deploy canary version.
2. Route 5% traffic to canary.
3. Monitor for 15 minutes.
4. Increase to 25% if healthy.
5. Increase to 50% if healthy.
6. Promote to 100% after all SLOs pass.
7. Roll back immediately if thresholds fail.

## Post-Deployment Verification

- Application endpoint responds successfully
- No CrashLoopBackOff pods
- HTTP 5xx rate below threshold
- p99 latency within baseline
- Database migration validation passed
- Audit evidence saved

## Rollback

Use rollback-runbook.md if deployment fails.
