# Beamstack Dedicated Deployment Agreement — TEMPLATE

**Product:** {{PRODUCT_NAME}} · **Client:** {{CLIENT_LEGAL_NAME}} ·
**Agreement no.:** {{REF}} · **Effective:** {{DATE}}

> ⚠️ **Working template, not a finished contract, not legal advice.** Every
> `[BRACKETED]` item is a negotiation point. A lawyer qualified in
> {{Morocco / France}} must review it before signature. Public-procurement rules
> may impose their own mandatory terms and an official contract form; this
> template then feeds those, it does not replace them.

Between **Beamstack** ("Licensor" — trading name of Abdellah Daoudi, sole
proprietor, Kingdom of Morocco, pending incorporation) and
**{{CLIENT_LEGAL_NAME}}** of `[address]` ("Client").

## 1. Purpose

Licensor licenses to Client a **single dedicated instance** of {{PRODUCT_NAME}}
(the "Instance"), to run on infrastructure the Client controls, so that Client's
data remains within Client's environment. This is a deployment topology of the
Commercial product, not a source-code licence.

## 2. Licence grant and scope

Licensor grants Client a **non-exclusive, non-transferable, non-sublicensable**
licence, for the Term, to **operate one (1) production Instance** (plus
`[N non-production]` instances) of {{PRODUCT_NAME}}, **for Client's own internal
use** by Client's personnel and Client's authorised project participants
(maîtres d'œuvre, entreprises, and statutory third parties acting on Client's
projects).

Client will **not**: operate more than the licensed number of Instances; make
the Instance available to third parties as a service or for their independent
use; multi-tenant it for other organisations; sell, rent, sublicense, or
transfer the Instance or the software; or use it to build a competing product.

## 3. What is delivered

- `[ ]` A container image / build, pinned by digest: `{{DIGEST}}`.
- `[ ]` Deployment runbook and configuration reference.
- `[ ]` Named support contacts and escalation path.
- **Source code:** `[PICK ONE]`
  - `[ ]` **Not delivered.** Client receives runnable artifacts only.
  - `[ ]` **Escrow.** Source is lodged with `[escrow agent]` and released to
    Client only on defined release events (Licensor insolvency; Licensor ceases
    to support the product for `[N months]`; material unremedied breach by
    Licensor). Released source is licensed solely for Client to maintain its own
    Instance — no redistribution, no productisation.
  - `[ ]` **Limited review licence.** Client's named security personnel may read
    the source for audit only, under NDA, with no right to modify, build, or
    deploy from it.

## 4. Hosting and operation

- **Operator:** `[Client-operated | Licensor-managed on Client infrastructure]`.
- **Environment:** `[Client cloud region / on-premise / gov cloud]`.
- **Credentials & keys:** held by `[Client]`; Licensor support access is
  `[break-glass, time-boxed, logged]`.
- **Client responsibilities:** provisioning and patching the host OS/network,
  backups, monitoring, capacity, and physical/network security of the
  environment — except to the extent Section 4 assigns these to Licensor.
- **CI proof:** the {{PRODUCT_NAME}} build passes its full test suite in a
  single-tenant configuration (the codebase assumes no multi-tenancy).

## 5. Updates and support

- Update cadence: `[e.g. quarterly minor, monthly security]`; applied by
  `[Client on Licensor's release | Licensor]`.
- Supported versions: current and `[N]` prior minor versions.
- Support scope, hours, response targets: `[SLA]`.
- End-of-support notice: `[N months]`.

## 6. Data protection and residency

- **Roles:** Client is the **data controller**. Licensor has no routine access
  to Client Data; where Licensor accesses it for support, Licensor acts as a
  **processor** under the **Data Processing Agreement** (Schedule A).
- **Applicable regime(s):** `[Morocco — Loi 09-08 / CNDP authorisation ref …]`
  `[EU/France — GDPR]`. Data does not leave `[jurisdiction]` except as Schedule A
  permits.
- **No telemetry** of Client Data leaves the Instance without Client's written
  configuration choice; product/error telemetry, if any, is described in
  Schedule A and can be disabled.

## 7. Fees and term

- **Licence fee:** `[one-off / annual]` `{{AMOUNT}}`.
- **Support & updates subscription:** `[annual]` `{{AMOUNT}}`.
- **Term:** `[N years]`, renewing `[terms]`. `[Deployment / professional-services
  fees, if any, in Schedule B.]`

## 8. Trademarks and identification

Client operates the Instance under the {{PRODUCT_NAME}} / Beamstack name and
must not rebrand it as Client's own product or remove Beamstack identification
from the running software. No other trademark rights are granted. Client may
state that it uses {{PRODUCT_NAME}} by Beamstack.

## 9. Warranties, liability, indemnity

`[IP indemnity by Licensor for the software; limitation of liability with a cap
tied to fees; exclusion of indirect damages; carve-outs; "AS IS" for anything
outside the express warranty; Client indemnity for its data and its operation of
the environment.]`

## 10. Termination and exit

- For uncured material breach (`[30 days]`) or insolvency.
- On termination or expiry: Client **stops operating** the Instance and
  **destroys or returns** all copies of the software within `[N days]` and
  certifies destruction; escrowed source (if any) is dealt with per Section 3.
- Licensor provides reasonable **data-export assistance** (Client Data is
  Client's throughout).
- Sections 3 (escrow survival), 6, 8, 9, 11 survive.

## 11. General

- **Governing law / venue:** `[Morocco / France — decide; public tenders may
  mandate this]`.
- Assignment: Licensor may assign to the incorporated Beamstack entity or a
  successor; otherwise no assignment without consent.
- Confidentiality (mutual); force majeure; entire agreement; written amendments;
  notices; severability.

---

**Schedule A — Data Processing Agreement** `[attach]`
**Schedule B — Deployment & Professional Services** `[attach, if any]`
**Schedule C — Support / SLA** `[attach]`

**Signatures**

| | Beamstack | {{CLIENT_LEGAL_NAME}} |
|---|---|---|
| Name | | |
| Title | | |
| Date | | |
| Signature | | |
