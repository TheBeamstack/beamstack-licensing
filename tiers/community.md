# BLF-Community

**Status:** active · **Framework:** BLF v1.0 · **Example:** Road-Designer

Source-available. The code is public, readable, forkable, and modifiable — but it
may **not be sold**, and any work built on it must **carry the Beamstack brand**.
Use this tier for tools, utilities, CLIs, desktop apps, and simple-hosting web
apps where "open source" is not a strategic requirement and distribution-only
copyleft is enough.

## Instrument

**Beamstack Community License 1.1** — [`../licenses/BCL-1.1.txt`](../licenses/BCL-1.1.txt),
shipped **verbatim** as the project's `LICENSE`.

SPDX: **`LicenseRef-BCL-1.1`**.

BCL-1.1 is a renamed, modified Mozilla Public License 2.0 (MPL §10.3) that:

- keeps MPL's **file-level copyleft** on distribution (modified files stay under
  BCL when shared; separate files you add can be your own terms);
- adds **§3.6 "No Sale"** — no selling the software, no charging for access, no
  paid hosting, no bundling into a paid product whose value is mostly the
  software. Internal use is unrestricted, **including using it to produce
  deliverables you bill to a client**, as long as the software itself is not
  what is being sold;
- adds **§3.7 "Attribution"** — a "Powered by Beamstack" credit (text or logo,
  linked to https://beam-stack.com) in the UI, the docs, and the package
  metadata of anything built on it, plus the `NOTICE` files kept intact;
- has an **inert §3.8 "Network Use"** — this tier does **not** attach Exhibit C,
  so §3.8 imposes nothing. Hosting a modified version as a free service owes
  only attribution. If you need network copyleft, use **BLF-Community-Network**.

## What this tier does and does not allow

| | |
|---|---|
| Use inside any company, incl. paid client work | **allowed** |
| Fork, modify, redistribute for free | **allowed** (keep `NOTICE`, keep the badge, publish changed files) |
| Host a modified version as a **free** service | **allowed** — attribution only |
| Sell it, charge for access, paid hosting, paid product built on it | **not allowed** — needs a commercial licence from Beamstack |
| Remove the "Powered by Beamstack" credit | **not allowed** — needs a written waiver |
| Re-license as MIT / MPL / GPL / AGPL | **not allowed** |
| Use the "Beamstack" name/logo as your own brand | **not allowed** (trademark) |

## Commercial waivers

Beamstack retains the right to grant, for a fee, a commercial licence removing
§3.6, §3.7, or both (BCL "FUTURE AND COMMERCIAL LICENSING"). Contact
askdaoudi@gmail.com.

## Repository checklist

- [ ] `LICENSE` = [`../licenses/BCL-1.1.txt`](../licenses/BCL-1.1.txt), verbatim.
- [ ] `NOTICE` from [`../templates/NOTICE`](../templates/NOTICE), filled in.
- [ ] `THIRD-PARTY-NOTICES.md` — bundled deps + licences. Adding a copyleft or
      source-available dependency needs a check against BCL §3 first.
- [ ] `TRADEMARKS.md` linking to [`../TRADEMARKS.md`](../TRADEMARKS.md).
- [ ] `CONTRIBUTING.md` from [`../templates/CONTRIBUTING.md`](../templates/CONTRIBUTING.md).
- [ ] `CLA.md` = [`../templates/CLA.md`](../templates/CLA.md), in force before the
      first outside PR.
- [ ] `LICENSING.md` — a plain-language guide is recommended (Road-Designer has a
      good model).
- [ ] README licence section from
      [`../templates/readme-license-section/community.md`](../templates/readme-license-section/community.md).
- [ ] SPDX headers: `SPDX-FileCopyrightText: 2026 Beamstack <https://beam-stack.com>`
      + `SPDX-License-Identifier: LicenseRef-BCL-1.1`.
- [ ] The product's own deployed UIs carry the "Powered by Beamstack" credit
      (BCL §3.7(b)).
- [ ] Record the assignment in [`../DECISIONS.md`](../DECISIONS.md).

## Not for

Products that need the OSI "open source" label (→ Open), hosted-collaboration
products whose moat a free modified fork would threaten (→ Community-Network),
or anything Beamstack keeps closed (→ Commercial).
