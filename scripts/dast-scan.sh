#!/bin/bash
# DAST Scan using OWASP ZAP for NovaPay
# Requirements: ZAP Docker container

echo "Starting DAST scan on target URL: $TARGET_URL"

docker run -t owasp/zap2docker-stable zap-full-scan.py     -t $TARGET_URL     -g gen.conf     -r report_html.html     -J report_json.json

# Check for high severity findings (Requirement 6.4 of PCI-DSS v4.0) 
if grep -q '"risk": "High"' report_json.json; then
    echo "DAST Scan failed: High severity vulnerabilities found."
    exit 1
fi
