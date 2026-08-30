# Beamstack License Framework — Changelog

Framework versions are `BLF vMAJOR.MINOR`. A new/removed tier or a changed
instrument for a tier is a MINOR bump. Editorial fixes are listed without a bump.
Every change also has a `BLF-D…` entry in [`DECISIONS.md`](DECISIONS.md).

## BLF v1.0 — 2026-08-30

Initial framework.

- Five tiers: **Open**, **Community**, **Community-Network**, **Commercial**,
  **Dedicated** (BLF-D1).
- Open tier uses unmodified upstream licences — AGPL-3.0-only / MPL-2.0 /
  Apache-2.0 (BLF-D2).
- Bundled instrument: **Beamstack Community License 1.1** (`licenses/BCL-1.1.txt`),
  used by the Community and Community-Network tiers.
- One canonical **Beamstack CLA** for Open and Community tiers (BLF-D3).
- **Dedicated** is a distinct tier with its own bilateral agreement (BLF-D4).
- Templates: CLA, `CONTRIBUTING.md`, `NOTICE`, `THIRD-PARTY-NOTICES.md`,
  Commercial EULA, Dedicated Deployment Agreement, per-tier README snippets.
- `scripts/apply-tier.sh` scaffolds a project for a chosen tier.
- Initial project assignments: Road-Designer → Community (applied); Bunyan →
  Open; Miqdar → Commercial; Maître d'Ouvrage → Commercial + Dedicated
  (BLF-D5…D8).
- Further assignments (2026-08-30): SmartBar → Open; Chantier_Manager →
  Commercial; Planitor → Commercial (BLF-D9…D11).

### Pending for a future version

- **BLF v1.1 on Beamstack's incorporation:** replace the "pending entity"
  clauses across the framework, `licenses/BCL-1.1.txt` header, the CLA, and the
  agreements with the registered entity's name; assign the sole proprietor's
  copyright to the entity.
- Assign a tier to BIMsync and Portique_Designer.
- Confirm whether Planitor also needs the BLF-Dedicated option (BLF-D11).
- Optional: a corporate/entity CLA variant (`templates/CLA-entity.md`).
- Lawyer review of the Commercial EULA and the Dedicated Deployment Agreement
  before first commercial use.
