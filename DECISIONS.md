# Beamstack License Framework — Decision Log

Numbered, append-only. Every framework change and every project → tier
assignment is an entry here. Newest at the bottom of each section.

Format: `BLF-D<n> | <title> | <date> | <decision + one-line rationale>`.

---

## Framework decisions

### BLF-D1 | Establish the framework and its five tiers | 2026-08-30

Created the Beamstack License Framework v1.0 with five tiers: **Open**,
**Community**, **Community-Network**, **Commercial**, **Dedicated**.

Rationale: Beamstack ships a family of AEC products with deliberately different
postures — some open as a wedge against incumbents (Bunyan vs Revit), some
source-available tools (Road-Designer), some closed moats (Miqdar), and some
sold to public institutions that require a client-operated instance (Maître
d'Ouvrage). One licence cannot serve all of these; a tiered framework with a
decision log lets the set evolve as new products appear.

### BLF-D2 | Open tier uses unmodified upstream licences, not a Beamstack licence | 2026-08-30

BLF-Open projects are licensed under **AGPL-3.0-only** (network-deployed) or
**MPL-2.0 / Apache-2.0** (libraries), verbatim.

Rationale: the value of the Open tier is the *recognised* "open source" label
(OSI / FSF). A modified or renamed licence forfeits that. The Beamstack Community
License is explicitly *not* OSI open source, so it cannot serve this tier. Brand
presence in the Open tier is carried by trademark, the copyright line, the
`NOTICE`/README convention, and a voluntary in-product credit — none of which
touch the upstream licence's freedoms (see FRAMEWORK.md §4).

### BLF-D3 | One canonical Beamstack CLA for Open and Community tiers | 2026-08-30

All BLF-Open and BLF-Community[-Network] projects use the single
[`templates/CLA.md`](templates/CLA.md) (Apache-ICLA-shaped: contributor keeps
copyright, grants Beamstack a relicensing + patent licence). A project may drop
to DCO-only *only if* it explicitly and permanently renounces commercial
dual-licensing.

Rationale: commercial dual-licensing (the Grafana/Mattermost model) is only
workable if Beamstack can include every contribution in a commercial grant
without tracing each contributor. A uniform CLA keeps that option open across the
ecosystem. Bunyan already has a compatible CLA; this generalises it.

### BLF-D4 | Dedicated is its own tier, not a footnote to Commercial | 2026-08-30

A client-operated private instance is **BLF-Dedicated**, governed by a signed
bilateral **Dedicated Deployment Agreement**, distinct from the click-through
Commercial EULA.

Rationale: the legal instrument differs (negotiated contract vs click-wrap), and
the obligations differ (client-side operator duties, data-processing terms,
optional source escrow, update cadence, data residency). Moroccan and French
public procurement routinely make a dedicated/in-country instance a tender
condition (Maître d'Ouvrage ADR-0003 A8/A9), so the terms must exist in advance.
A project is normally BLF-Commercial with BLF-Dedicated offered as an option.

---

## Project assignments

### BLF-D5 | Road-Designer → BLF-Community | 2026-08-30

Instrument: **BCL-1.1** (no Exhibit C). **Applied** in the Road-Designer repo.

Rationale: a civil-engineering deliverable generator for BETs. Source-available
is fine (no "open source" strategic thesis); it must not be resold or
re-branded; distribution-only copyleft is sufficient (it is a tool run locally
and on simple hosting, not a hosted-collaboration product). Considered
BLF-Community-Network and declined — its Streamlit/React/CLI surfaces are not a
moat that a hosted fork would threaten.

### BLF-D6 | Bunyan → BLF-Open (AGPL-3.0-only + commercial) | 2026-08-30

Instrument: **AGPL-3.0-only**, dual-licensed with a commercial option via the
Beamstack CLA. Ruling recorded here; **not yet applied** in the Bunyan repo.

Rationale: Bunyan's own D15 ruling makes the OSI "open source" label the core of
its anti-Revit wedge. AGPL already delivers what D15 requires — the SaaS loophole
closed (§13) and the Grafana/Mattermost dual-licensing model it cites. Adopting
the Beamstack Community License would trade the "open source" label for a No-Sale
clause and a forced attribution badge that D15 never asked for. See the
Road-Designer session analysis and BLF-D2. Bunyan keeps its existing CLA
(compatible with `templates/CLA.md`); it still needs a `CONTRIBUTING.md` and the
`<LEGAL ENTITY>` fill-in on incorporation.

### BLF-D7 | Miqdar → BLF-Commercial | 2026-08-30

Instrument: proprietary; end users accept the **Beamstack Commercial EULA**.
Ruling recorded; **not yet applied**.

Rationale: Miqdar is the deliberate closed "moat" beside Bunyan's open "wedge"
(Bunyan M13 / archived Miqdar spec — D15 is *inverted* for Miqdar). No public
source.

### BLF-D8 | Maître d'Ouvrage → BLF-Commercial, with BLF-Dedicated offered | 2026-08-30

Base instrument: proprietary multi-tenant SaaS under the **Beamstack Commercial
EULA**. A **BLF-Dedicated** single-tenant instance is offered on request per a
signed Dedicated Deployment Agreement. Ruling recorded; **not yet applied**.

Rationale: a construction-project-owner SaaS for Moroccan and French maîtres
d'ouvrage. Multi-tenant SaaS is the default; public institutions (Moroccan
especially) routinely require a dedicated in-country instance as a tender
condition, and data residency (CNDP / Loi 09-08) is a live compliance track
(MdO ADR-0003 A8/A9). The codebase already enforces "no assumed multi-tenancy"
so the same image serves both.

### BLF-D9 | SmartBar → BLF-Open (AGPL-3.0-only + commercial) | 2026-08-30

Instrument: **AGPL-3.0-only**, dual-licensed with a commercial option via the
Beamstack CLA. Ruling recorded; **not yet applied** in the SmartBar repo
(internal package name `rebarconfig`).

Rationale: SmartBar is a browser-based parametric rebar-detailing app (a
checker/detailer for reinforced-concrete steel, against BAEL 91-99 / Eurocode 2
/ RPS 2011). It is a client-side SPA today but its engine is deliberately kept
framework-free "so the same core runs unchanged on a v1.1 server" — the roadmap
is a hosted multi-tenant SaaS (accounts, cloud sync, teams). That is the
canonical AGPL case (network-deployed, or on a clear path to it). No existing
`LICENSE`, CLA, or SPDX headers — a clean first open-source release. All
dependencies are permissive and AGPL-compatible.

Caveats for the SmartBar agent to carry into the release: (a) the code packs
still ship engineering constants flagged provisional / *provisoire* that no
licensed structural engineer has ratified — the `NOTICE` and README need a
prominent "not for construction, no warranty, constants unratified" disclaimer
beyond the bare licence; (b) check that `structural_data.md` does not reproduce
AFNOR/CEN/Moroccan standards **tables** verbatim at volume (individual constants
and formulas are facts and fine); (c) resolve the public identity — code says
`RebarConfig` / `@rebarconfig/*`, the product is `SmartBar`.

Optional variant, not adopted: license the pure engine packages
(`packages/core`, `codepacks`, `exporters`) as MPL-2.0 and keep `apps/web` +
the future backend AGPL-3.0-only. Single AGPL-3.0-only across the repo is the
simpler, more conservative default and is what is ruled here.

### BLF-D10 | Chantier_Manager → BLF-Commercial | 2026-08-30

Instrument: proprietary; end users accept the **Beamstack Commercial EULA**.
Ruling recorded; **not yet applied** (README currently says only "Proprietary.
All rights reserved." with no `LICENSE` file).

Rationale: a multi-tenant SaaS operations cockpit for construction SMEs (BTP,
France + Morocco) — signed marché → lot breakdown → on-site progress → an
automatic immutable progress-billing statement (*décompte*), plus cost ledger,
procurement, inventory, and subcontracting. Live private pilot on a single
self-hosted stack. **No BLF-Dedicated needed:** it is multi-tenant-by-row only,
Basic vs Pro is a feature flag over one shared codebase and DB, and no on-prem /
single-tenant / customer-hosted path is documented or supported.

Compliance note for the agent: no GPL/AGPL anywhere; the sole copyleft
dependency is `psycopg` 3 (LGPL-3.0, used as an unmodified imported library) —
document it plus the `pyphen` licence election (via WeasyPrint) in a
`THIRD-PARTY-NOTICES` file. Add a real `LICENSE` + `license` fields to the four
manifests, and run a licence (SBOM) scan — CI currently audits vulnerabilities
only.

### BLF-D11 | Planitor → BLF-Commercial | 2026-08-30

Instrument: proprietary; end users accept the **Beamstack Commercial EULA**.
Ruling recorded; **not yet applied** (no `LICENSE`, `NOTICE`, CLA, or SPDX
headers — a clean slate). Canonical repo: `planitor_variants/Planitor_VF`.

Rationale: a model-driven 4D/5D construction-scheduling and progress-monitoring
platform for small and mid-size contractors — parametric "construction variant"
objects deterministically generate activities, a calendar-aware CPM schedule,
earned-value metrics (SPI/CPI/EAC…), cost allocation, resource leveling, and
S-curves; an uploaded IFC model is an "alternate front door" that *generates*
the 4D schedule rather than having it hand-linked. Multi-tenant SaaS
(tenant-isolated on every project-scoped endpoint; subscription tier gates
features, never storage). Nothing assumes or promises open source.

**BLF-Dedicated:** not documented or marketed today; the Docker Compose stack
would make a dedicated deployment technically straightforward. Flag for the
owner — add the Dedicated option to this ruling if a client-hosted instance is
planned (e.g. for the same public-procurement reasons as Maître d'Ouvrage).

Compliance note: no GPL/AGPL; LGPL-3.0 dependencies `ifcopenshell` 0.8.5 (kept
behind the `app/domain/ifc/reader.py` adapter boundary) and `psycopg` 3 — both
unmodified dynamic imports, fine for a closed SaaS; disclose them in `NOTICE`.
Also fix the dangling `AGENTS.md` reference in the README.

### (open) | BIMsync, Portique_Designer | — | unassigned

Pending an owner ruling. Until assigned, All Rights Reserved / not for
distribution. Add a `BLF-D…` entry when each is decided. (BIMsync is the "Clean
Delta" / Canonical Takeoff Manifest producer that Planitor consumes — see
BLF-D11.)
