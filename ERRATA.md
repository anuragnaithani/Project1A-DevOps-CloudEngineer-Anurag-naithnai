# ERRATA - Deliberate Technical Errors

This file documents the three deliberate technical errors identified in the project documentation.

### 1. Error in Part A (Environment Promotion)
- **Location**: Section A6.1, Promotion Criteria: Dev → Staging.
- **Issue**: The document stated that "Automated promotion - no human approval required if all gates pass" for Dev to Staging [cite: 179], but Section A4.3 and general regulated banking standards for Change Management (RBI Master Direction 4.2) require formal segregation of duties and approval gates for all environment transitions[cite: 131, 194].

### 2. Error in Part C (Cloudflare Case Study)
- **Location**: Case Study 3: Cloudflare Global Outage.
- **Issue**: The original text incorrectly stated the outage duration was 21 minutes[cite: 444]. The actual duration of the global outage on July 2, 2019, was 27 minutes[cite: 445].

### 3. Error in Part D (Project Methodology)
- **Location**: Section D3, Day 15: Final Submission.
- **Issue**: The text stated "No extensions without prior accepted after this time e extension" [cite: 679], which was grammatically broken and contained conflicting information regarding extension policies compared to the strict protocol outlined in Section F[cite: 751].

---
*Documented as part of the NovaPay DevOps & Cloud Engineer Assessment.*
