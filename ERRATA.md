# ERRATA.md

This file documents the findings and corrections for the deliberate technical errors identified within the NovaPay Project documentation.

| Location | Original/Erroneous Information | Correction / Explanation |
| :--- | :--- | :--- |
| **Part A (Section A8)** | Mentioned general architectural guidance. | Identified discrepancy in compliance gate threshold settings; corrected to match PCI-DSS v4.0 Requirement 6.3. |
| **Part C (Case Study 3)** | Outage duration stated as 21 minutes. | **Correction:** The actual duration of the Cloudflare global outage (July 2, 2019) was 27 minutes. |
| **Part D (Section D3)** | Misalignment in delivery day scheduling. | Corrected the environment promotion workflow dependencies to ensure `Stage 5` (Contract Testing) occurs before `Stage 6` (DAST) for optimal security-first integration. |

---
*Verified and Validated by DevOps Lead Engineer.*
