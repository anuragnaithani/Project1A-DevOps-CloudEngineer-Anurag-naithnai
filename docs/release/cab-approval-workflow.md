# Change Advisory Board Approval Workflow

Production releases require approval before deployment.

## Required Approvers

- Release Manager
- SRE Lead

## Required Evidence

- Pull request approval
- CI/CD pipeline logs
- SAST report
- Trivy report
- DAST report
- Compliance mapping
- Rollback plan
- Database migration plan

## Emergency Change

Emergency hotfixes may be expedited but cannot bypass:

- SAST
- Trivy scan
- DAST
- OPA policy gate
- Rollback verification
