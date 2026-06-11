# 📄 ERRATA REPORT – NovaPay DevSecOps Project

## 🏦 Project: NovaPay Digital Banking CI/CD Platform  
## 📌 Document Type: Technical Deviations & Corrections Log  

This document records intentional technical discrepancies identified during the NovaPay project design phase and their corresponding corrections aligned with industry standards (RBI, PCI-DSS v4.0, and DevSecOps best practices).

---

## 📍 Part A (Section A8) – Compliance Gate Configuration

- **Original Issue:**  
  General architectural guidance was provided without strict enforcement thresholds for compliance gates.

- **Correction:**  
  Updated compliance validation logic to align with **PCI-DSS v4.0 Requirement 6.3**, ensuring secure code review and vulnerability checks before deployment.

---

## 📍 Part C (Case Study 3) – Incident Duration Accuracy

- **Original Issue:**  
  Cloud outage duration was documented as **21 minutes**.

- **Correction:**  
  Verified historical data confirms the correct duration of the **Cloudflare Global Outage (July 2, 2019)** as **27 minutes**.

---

## 📍 Part D (Section D3) – Deployment Workflow Sequencing

- **Original Issue:**  
  Misalignment in CI/CD stage execution order.

- **Correction:**  
  Updated pipeline flow to enforce security-first delivery:

  ✔ Stage 5: Contract Testing  
  ✔ Stage 6: Dynamic Application Security Testing (DAST)  

This ensures vulnerabilities are detected before runtime exposure.

---

## 📌 Verification Statement

All corrections have been reviewed and aligned with DevSecOps best practices and compliance requirements.

**Verified by:** DevOps Lead Engineer  
**Status:** Approved for Final Submission
