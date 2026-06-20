# NovaPay Incident Response Playbook

## SEV-1

Complete outage or data integrity issue

Response time: <5 minutes

Escalation:
- CTO
- CISO
- SRE Lead

Actions:
1. Trigger rollback
2. Verify service health
3. Open incident bridge
4. Collect logs
5. Restore service

---

## SEV-2

Major degradation affecting users

Response time: <15 minutes

Escalation:
- VP Engineering
- SRE Lead

Actions:
1. Investigate alerts
2. Review recent deployment
3. Rollback if required

---

## SEV-3

Minor issue

Response time: <1 hour

Actions:
1. Create ticket
2. Schedule remediation

---

## Communication

Status updates:
- Every 30 min for SEV-1
- Every 1 hour for SEV-2

Postmortem required for SEV-1 incidents.
