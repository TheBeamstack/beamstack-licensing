# BLF-Dedicated

**Status:** active · **Framework:** BLF v1.0 · **Example:** Maître d'Ouvrage dedicated instances

A **single named client** runs a **private instance** of a Beamstack product on
**infrastructure the client controls**, so the client's data never sits on
Beamstack's shared platform. Proprietary. Not public. Not resellable. Governed by
a **signed bilateral agreement**, one per client, not a click-through EULA.

Use this tier when a client — typically a public institution, or a firm with a
data-residency or confidentiality mandate — makes a dedicated / in-country
instance a condition of the deal. It normally sits **on top of a
[BLF-Commercial](commercial.md) base**: the same codebase, deployed single-tenant
for that client.

## Instrument

- **Beamstack Dedicated Deployment Agreement** —
  [`../templates/DEDICATED-DEPLOYMENT-AGREEMENT.md`](../templates/DEDICATED-DEPLOYMENT-AGREEMENT.md).
  A negotiated contract signed by Beamstack and the client. It grants a
  non-exclusive, non-transferable right for that client to operate **one
  instance**, for their **own internal use**, for a defined term and fee.
- The product repo's `LICENSE` stays the [BLF-Commercial](commercial.md)
  all-rights-reserved notice; the Agreement is what authorises the client's
  deployment.
- SPDX in source headers: **`LicenseRef-Beamstack-Dedicated`** for any code
  path that only exists to support dedicated deployments (otherwise the base
  tier's identifier).

## What the Agreement must settle (checklist for each client)

- **Grant & scope** — one instance, named client, internal use only; no
  redistribution, no resale, no offering the instance to third parties, no
  multi-tenanting it for others.
- **Who operates it** — client-hosted (client's cloud/on-prem) vs
  Beamstack-managed-on-client-infra; who holds the credentials; SLA and support
  boundaries.
- **Source code** — default: **no source delivered** (binary/container image
  only). Options: source **escrow** (released only on defined Beamstack-failure
  triggers), or a **limited source licence** for the client's own security
  review with no right to modify or redeploy. State exactly which.
- **Updates** — cadence, who applies them, how long an old version is supported,
  what happens at end of term.
- **Data** — the client is the data controller; Beamstack is at most a processor
  for support access. Reference the applicable regime (Morocco **Loi 09-08 /
  CNDP**; EU **GDPR**). A separate **Data Processing Agreement** is attached if
  Beamstack has any access.
- **Trademark** — the client may run it under the Beamstack product name; the
  client may **not** rebrand it as their own product or remove Beamstack
  identification.
- **Term, fees, termination** — licence fee + support/update subscription;
  on termination the client must stop operating and destroy or return the
  software; data export assistance.
- **Warranty, liability, indemnity, governing law** — negotiated;
  **lawyer-reviewed before signing**.
- **Confidentiality** — mutual.

## Repository / delivery checklist

- [ ] Base tier ([BLF-Commercial](commercial.md)) is fully in place first.
- [ ] The image builds and the full test suite passes in a **single-tenant
      configuration** (the codebase must never assume more than one tenant —
      CI should prove it).
- [ ] A per-client folder in the delivery/ops repo: the signed Agreement, the
      DPA (if any), deployment runbook, the pinned image digest delivered, and
      the support contacts.
- [ ] `LicenseRef-Beamstack-Dedicated` headers on dedicated-only code paths.
- [ ] Record the client engagement in the project's own decision/ops log and the
      tier assignment in [`../DECISIONS.md`](../DECISIONS.md).

## Not for

Beamstack's own multi-tenant hosting of the product (that is
[BLF-Commercial](commercial.md)), or any arrangement where the client gets a
right to modify and redeploy the software (that is a bespoke commercial licence,
negotiated separately).
