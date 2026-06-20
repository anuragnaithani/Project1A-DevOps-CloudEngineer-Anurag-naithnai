# Automated Rollback Strategy

Category A Immediate Rollback

- HTTP 5xx > 5%
- CrashLoopBackOff
- Health check failures
- Database connection exhaustion

Category B Escalated Rollback

- p99 latency > 2x baseline
- CPU >90%
- Memory >85%
- Error budget burn

Category C Manual Rollback

- Customer complaints
- Compliance issues
- Dependency failures

Deployment strategies supported:

- Blue-Green
- Canary

Target MTTR:

<15 minutes
