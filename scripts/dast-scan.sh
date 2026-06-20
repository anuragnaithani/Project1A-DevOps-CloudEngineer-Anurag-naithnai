#!/bin/bash
set -e

TARGET_URL=${1:-"http://localhost:8080"}

echo "Starting OWASP ZAP DAST scan for: $TARGET_URL"

docker run --rm \
  -t owasp/zap2docker-stable zap-baseline.py \
  -t "$TARGET_URL" \
  -r zap-report.html

echo "DAST scan completed. Report generated: zap-report.html"
