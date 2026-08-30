# BLF-Open

**Status:** active · **Framework:** BLF v1.0 · **Example:** Bunyan

Genuine, OSI-recognised open source. Use this tier when the "open source" label
is itself a strategic asset — an anti-incumbent wedge, an ecosystem play, a
trust guarantee to users ("you will never lose access, and you can verify the
engine").

## Instrument

An **unmodified upstream licence**, chosen by shape:

| Project shape | Licence | SPDX |
|---|---|---|
| Anything network-deployed, or that could be (an app, a service, a browser SPA, a hosted or self-hostable product) | **GNU Affero General Public License v3.0 only** | `AGPL-3.0-only` |
| A library or component meant to be embedded in other software | **Mozilla Public License 2.0** (file-level copyleft) or **Apache License 2.0** (permissive, patent grant) | `MPL-2.0` / `Apache-2.0` |

Beamstack **pins the exact version** (`AGPL-3.0-only`, not `-or-later`) so
adopting a future FSF version is a deliberate per-project decision.

Do **not** modify, rename, or add clauses to the upstream text. Adding a
"Powered by Beamstack" requirement, a no-sale clause, or a field-of-use
restriction would make it non-open-source — that is what the Community tiers are
for.

## Why AGPL and not plain GPL for services

AGPL §13 closes the "SaaS loophole": a competitor who runs a modified version as
a hosted service must offer users the corresponding source. Plain GPL does not.
For a product whose moat is *hosted operation*, AGPL is the open-source licence
that defends it.

## Dual-licensing / commercial option

BLF-Open is compatible with selling **commercial exceptions** (the
Grafana / Mattermost / GitLab model): the public gets AGPL; a customer who needs
to keep their own modifications closed buys a proprietary licence from Beamstack.
This requires the **Beamstack CLA** to be in force (see below) so every
contribution can be included in a commercial grant.

## How the Beamstack brand is carried (the licence cannot force it)

AGPL/MPL/Apache cannot compel a "Powered by Beamstack" badge without ceasing to
be open source. Brand presence is instead:

1. **Trademark** — "Beamstack", the product name, and the logo are trademarks
   ([`../TRADEMARKS.md`](../TRADEMARKS.md)). No open-source licence grants
   trademark rights: **a fork must rename.** This is the real protection.
2. **Copyright line** — `Copyright (C) 2026 Beamstack` in every file and `NOTICE`.
3. **`NOTICE` + README** — the repo states it is *"a Beamstack project"* with a
   link to https://beam-stack.com. A documentation convention, not a licence
   term; a fork is free to remove it, but not to keep the name.
4. **In-product credit** — Beamstack's *own* deployment shows *"A Beamstack
   project"* / "Powered by Beamstack", linked out. Voluntary; not imposed on
   forks.

## Repository checklist

- [ ] `LICENSE` = the chosen upstream text, verbatim (get it from `gnu.org` /
      `spdx.org`, not retyped).
- [ ] `NOTICE` from [`../templates/NOTICE`](../templates/NOTICE), filled in.
- [ ] `THIRD-PARTY-NOTICES.md` listing bundled dependencies and their licences.
- [ ] `TRADEMARKS.md` — a short file linking to [`../TRADEMARKS.md`](../TRADEMARKS.md).
- [ ] `CONTRIBUTING.md` from [`../templates/CONTRIBUTING.md`](../templates/CONTRIBUTING.md),
      pointing at the CLA. **The CLA must be in force before the first outside PR**
      or the commercial option is foreclosed.
- [ ] `CLA.md` = [`../templates/CLA.md`](../templates/CLA.md) (or the project's
      existing compatible CLA).
- [ ] README licence section from
      [`../templates/readme-license-section/open.md`](../templates/readme-license-section/open.md).
- [ ] SPDX headers: `SPDX-FileCopyrightText: 2026 Beamstack <https://beam-stack.com>`
      + `SPDX-License-Identifier: AGPL-3.0-only` (or `MPL-2.0` / `Apache-2.0`).
- [ ] Record the assignment in [`../DECISIONS.md`](../DECISIONS.md).

## Not for

Anything Beamstack wants to keep closed (→ Commercial), anything where a paid
third-party host is unacceptable even with source disclosure (→ Community or
Community-Network), or anything where losing the "open source" label is
acceptable and a no-sale + brand guarantee is preferred (→ Community).
