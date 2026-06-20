# Image Signing and Provenance

NovaPay requires immutable and signed container images for production.

## Controls

- Image tag uses Git SHA
- SBOM generated using CycloneDX format
- Container scan performed before deployment
- Production should reject unsigned images through admission policy

## Recommended Tool

- Cosign for image signing
- OPA/Kyverno for signed image admission control

## Evidence

- GitHub Actions workflow run ID
- Commit SHA
- Docker image SHA tag
- SBOM report
- Trivy scan report
