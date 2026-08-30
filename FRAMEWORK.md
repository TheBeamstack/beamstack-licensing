# Beamstack License Framework (BLF)

**Version 1.0** · Steward: Beamstack · Contact: askdaoudi@gmail.com

The BLF is the single policy that decides how every Beamstack software project is
licensed. It defines a small set of **tiers**. Each project is assigned exactly
one tier (a project MAY additionally offer the Dedicated tier as a contracted
option). The tier determines the licence instrument, the contributor terms, how
the Beamstack brand is carried, and which files the repository must ship.

> **Authoritative-file principle.** The BLF is a *template and policy* layer. The
> file that actually governs a given project is the `LICENSE` (and any signed
> agreement) shipped in that project's own repository. Where a project's shipped
> `LICENSE` and this framework disagree, the shipped `LICENSE` controls for that
> project, and the discrepancy is a bug to be fixed in one place or the other.

> **Not legal advice.** This framework and its templates were not written by a
> lawyer. Before a project goes public, is sold, or is deployed for a paying
> client, its licence and any agreement must be reviewed by a qualified lawyer in
> the relevant jurisdiction (Morocco and/or France for most Beamstack work).

---

## 1. The tiers at a glance

| Tier | Instrument | OSI open source? | Can a third party sell / paid-host it? | Network copyleft | Contributor terms | Example project |
|---|---|---|---|---|---|---|
| **BLF-Open** | A standard upstream licence, unmodified: **AGPL-3.0-only** for anything network-deployed; **MPL-2.0** or **Apache-2.0** for a library | **Yes** | Yes (AGPL: they must publish their source) | Yes (via AGPL §13) | Beamstack CLA | **Bunyan** |
| **BLF-Community** | **Beamstack Community License 1.1** (`LicenseRef-BCL-1.1`) | No — source-available | **No** (BCL §3.6 "No Sale") | No | Beamstack CLA | **Road-Designer** |
| **BLF-Community-Network** | **BCL 1.1 + Exhibit C** (`LicenseRef-BCL-1.1-Network`) | No — source-available | **No** | **Yes** (BCL §3.8) | Beamstack CLA | *(reserved — no project yet)* |
| **BLF-Commercial** | Proprietary. `LICENSE` = all-rights-reserved notice; end users accept the **Beamstack Commercial EULA** | No | No | n/a | Beamstack CLA (internal contributors) or none | **Miqdar** |
| **BLF-Dedicated** | Proprietary, single named licensee, client-operated. Governed by a signed **Beamstack Dedicated Deployment Agreement** | No | No | n/a | n/a (no external contribution) | **Maître d'Ouvrage** dedicated instances |

Full definitions: [`tiers/open.md`](tiers/open.md) · [`tiers/community.md`](tiers/community.md) ·
[`tiers/community-network.md`](tiers/community-network.md) · [`tiers/commercial.md`](tiers/commercial.md) ·
[`tiers/dedicated.md`](tiers/dedicated.md).

Anything **not yet assigned a tier** — internal tooling, unpublished services,
scratch repos — is **All Rights Reserved / not for distribution** by default
until a tier is ruled in [`DECISIONS.md`](DECISIONS.md).

---

## 2. Choosing a tier for a new project

Answer in order; stop at the first "yes".

1. **Is it a paid product Beamstack sells or hosts, and the code is not meant to
   be public?** → **BLF-Commercial**. (If a specific client also needs to run it
   on their own infrastructure, additionally offer **BLF-Dedicated**.)
2. **Is it a client-operated private instance under a bilateral contract?** →
   **BLF-Dedicated** (usually alongside a Commercial base).
3. **Do you want it to be genuinely "open source" — the label is a strategic
   asset (e.g. an anti-incumbent wedge) — and you accept that anyone may run a
   competing hosted version as long as they publish their changes?** →
   **BLF-Open** (AGPL-3.0-only if it is or could be network-deployed; MPL-2.0 /
   Apache-2.0 if it is a library meant to be embedded).
4. **Do you want the source public and forkable, but nobody may sell it or strip
   the Beamstack brand, and it is (or is a component of) a hosted service whose
   value is the running deployment?** → **BLF-Community-Network**.
5. **Otherwise — source public, no resale, brand travels, distribution-only
   copyleft is enough (tools, utilities, CLIs, desktop apps):** →
   **BLF-Community**.

Record the choice as a numbered entry in [`DECISIONS.md`](DECISIONS.md).

---

## 3. What each project repository must contain

| File | BLF-Open | BLF-Community[-Network] | BLF-Commercial | BLF-Dedicated |
|---|---|---|---|---|
| `LICENSE` | upstream text (AGPL-3.0 / MPL-2.0 / Apache-2.0), verbatim | `licenses/BCL-1.1.txt`, verbatim (+ Exhibit C block at the top for `-Network`) | all-rights-reserved notice ([`tiers/commercial.md`](tiers/commercial.md)) | reference to the signed Agreement |
| `NOTICE` | [`templates/NOTICE`](templates/NOTICE) filled in | same | same | same |
| `THIRD-PARTY-NOTICES.md` | yes | yes | yes | yes |
| `TRADEMARKS.md` | link to [`TRADEMARKS.md`](TRADEMARKS.md) | link | link | link |
| `CONTRIBUTING.md` | [`templates/CONTRIBUTING.md`](templates/CONTRIBUTING.md) | same | if it accepts outside contributions | n/a |
| CLA in force | **before the first outside PR** | before the first outside PR | for any non-employee contributor | n/a |
| README licence section | [`templates/readme-license-section/open.md`](templates/readme-license-section/open.md) | `…/community.md` or `…/community-network.md` | `…/commercial.md` | `…/dedicated.md` |
| SPDX headers in source | `SPDX-License-Identifier: <AGPL-3.0-only\|MPL-2.0\|Apache-2.0>` | `LicenseRef-BCL-1.1` / `LicenseRef-BCL-1.1-Network` | `LicenseRef-Beamstack-Commercial` | `LicenseRef-Beamstack-Dedicated` |
| Copyright line | `Copyright (C) 2026 Beamstack` (see §5) | same | same | same |

`scripts/apply-tier.sh` copies the right set into a target repository.

---

## 4. How the Beamstack brand is carried in each tier

The brand is protected by **four independent mechanisms**, not only by a licence
clause. This matters because the Open tier's licence (AGPL) legally *cannot*
force a "Powered by Beamstack" badge without ceasing to be open source.

1. **Trademark.** "Beamstack", each product name (e.g. "Bunyan", "Road-Designer",
   "Miqdar"), and the Beamstack logo are trademarks — see [`TRADEMARKS.md`](TRADEMARKS.md).
   No licence in any tier grants trademark rights. A fork **must rename**. This is
   the brand protection that applies in *every* tier, including Open.
2. **Copyright line.** Every file and `NOTICE` reads `Copyright (C) 2026 Beamstack`.
3. **`NOTICE` + README.** Every repo states it is *"a Beamstack project"* with a
   link to https://beam-stack.com. In BLF-Open this is a documentation
   convention (not licence-enforced); in BLF-Community[-Network] it is also
   enforced by BCL §3.7.
4. **In-product credit.** Beamstack's *own* deployment of every product shows a
   "Powered by Beamstack" / "A Beamstack project" credit. In BLF-Open this is
   voluntary and not imposed on forks; in BLF-Community[-Network] BCL §3.7(b)
   requires it of every deployment.

---

## 5. Ownership, copyright line, and the pending entity

Beamstack is not yet an incorporated company. Until it is:

- The **copyright holder of record** for all Beamstack code is **Abdellah Daoudi**
  (sole proprietor), askdaoudi@gmail.com.
- Notices are nevertheless written as `Copyright (C) 2026 Beamstack`, with a
  one-line clause naming Abdellah Daoudi wherever a legal person is strictly
  required (see the `NOTICE` template and BCL-1.1's own header).
- The **CLA counterparty** and the **licensor** in the Commercial EULA / Dedicated
  Agreement are written as `Beamstack` with the same fallback clause.
- **On incorporation:** publish BLF v1.1, replace the "pending entity" clauses
  with the registered entity's name, assign the sole proprietor's copyright to
  the entity, and re-issue `NOTICE` / CLA / agreements. Existing licences remain
  valid; this is a housekeeping pass, not a re-licence.

---

## 6. Changing the framework — tiers can be added, modified, or retired

The BLF is expected to evolve as new products appear.

- **Every change is a numbered entry in [`DECISIONS.md`](DECISIONS.md)** (`BLF-D…`),
  with date, rationale, and the files touched.
- **Framework versioning** is in [`CHANGELOG.md`](CHANGELOG.md): `BLF vMAJOR.MINOR`.
  A new or removed tier, or a changed instrument for a tier, is a MINOR bump
  (v1.0 → v1.1). Editorial fixes are noted without a bump.
- **Adding a tier:** write `tiers/<name>.md`, add its row to §1, its README
  snippet, its SPDX id, any template it needs, and a `DECISIONS.md` entry. Assign
  at least one example project or mark it "reserved".
- **Modifying a tier's instrument** (e.g. BCL 1.1 → 1.2, or Open adopting a
  different upstream licence): bump the instrument's own version, update
  `licenses/`, the tier doc, and every affected project on its own schedule.
  Projects already shipped under the old instrument stay valid (see BCL §10.2 for
  BCL projects; upstream-licence projects follow that licence's own "any later
  version" rules only if the project opted into them — Beamstack pins exact
  versions, e.g. `AGPL-3.0-only`, so a bump is a deliberate per-project action).
- **Retiring a tier:** mark the tier doc `RETIRED` with the superseding tier and a
  migration note; do not delete it (projects and history reference it). Move no
  project off a retired tier without a `DECISIONS.md` entry.
- **Retroactivity:** a framework change never silently re-licenses shipped code.
  Moving a project to a new tier is an explicit, logged action per project.

---

## 7. Project → tier assignments

Maintained in [`DECISIONS.md`](DECISIONS.md) §"Project assignments". Current state:

| Project | Tier | Instrument | Status |
|---|---|---|---|
| Bunyan | BLF-Open | AGPL-3.0-only (+ commercial) | ruling recorded; not yet applied in the Bunyan repo |
| Road-Designer | BLF-Community | BCL-1.1 | **applied** |
| Miqdar | BLF-Commercial | proprietary + Beamstack Commercial EULA | ruling recorded; not yet applied |
| Maître d'Ouvrage | BLF-Commercial (+ BLF-Dedicated option) | proprietary EULA; Dedicated Agreement per client | ruling recorded; not yet applied |
| Planitor, BIMsync, Chantier_Manager, Portique_Designer, SmartBar | **unassigned** | — | pending owner ruling |
| beamstack-contact, daoudi.beam-stack.com | unassigned (internal) | All Rights Reserved by default | — |
