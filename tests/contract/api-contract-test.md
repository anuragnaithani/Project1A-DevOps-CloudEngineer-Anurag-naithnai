# NovaPay API Contract Test Evidence

## Purpose

This document validates that new NovaPay API versions remain backward compatible with existing consumers during zero-downtime deployments.

## Contract Rules

- Existing endpoints must not be removed without versioning.
- Existing response fields must not be renamed.
- New fields must be optional or backward compatible.
- HTTP status codes must remain compatible.
- Payment APIs must preserve request and response structure.

## Example Contract

Endpoint:

GET /health

Expected response:

{
  "status": "ok",
  "service": "novapay"
}

## Pipeline Gate

The deployment is blocked if contract compatibility fails.
