# NovaPay Automated Rollback Runbook

## Purpose

This runbook defines rollback actions for failed blue-green or canary deployments.

## Immediate Rollback Triggers

Rollback must start automatically if any of the following occur:

- HTTP 5xx error rate exceeds 5% for 60 seconds
- Three consecutive health check failures
- Pod enters CrashLoopBackOff
- Database connection pool exhaustion
- p99 latency becomes 2x higher than baseline for 5 minutes

## Blue-Green Rollback

Switch service selector back to stable version:

```bash
kubectl patch service novapay-service -p '{"spec":{"selector":{"app":"novapay","version":"blue"}}}'
