# beamstack-licensing

The **Beamstack License Framework (BLF)** — the single source of truth for how
every Beamstack software project is licensed, how the brand is carried, and what
each repository must ship.

- **[`FRAMEWORK.md`](FRAMEWORK.md)** — the framework: the tiers, how to choose
  one, per-repo file requirements, brand mechanisms, and the process for
  changing tiers.
- **[`DECISIONS.md`](DECISIONS.md)** — numbered decision log (`BLF-D…`), including
  every project → tier assignment.
- **[`CHANGELOG.md`](CHANGELOG.md)** — framework version history.
- **[`TRADEMARKS.md`](TRADEMARKS.md)** — the Beamstack trademark policy (this is
  what protects the brand in the Open tier, where the licence cannot).
- **[`tiers/`](tiers/)** — one page per tier.
- **[`licenses/`](licenses/)** — canonical licence texts (currently the Beamstack
  Community License, `BCL-1.1.txt`).
- **[`templates/`](templates/)** — the CLA, `CONTRIBUTING.md`, `NOTICE`,
  `THIRD-PARTY-NOTICES.md`, the Commercial EULA, the Dedicated Deployment
  Agreement, and per-tier README snippets.
- **[`scripts/apply-tier.sh`](scripts/apply-tier.sh)** — scaffolds the correct
  files into a target repository for a chosen tier.

## The five tiers (summary)

| Tier | For | Instrument |
|---|---|---|
| **BLF-Open** | Products where "open source" is a strategic asset | AGPL-3.0-only (network) / MPL-2.0 / Apache-2.0 (library) — unmodified upstream |
| **BLF-Community** | Public, forkable tools that must not be resold and must carry the brand | Beamstack Community License 1.1 |
| **BLF-Community-Network** | As above, plus AGPL-style network copyleft | BCL 1.1 + Exhibit C |
| **BLF-Commercial** | Paid proprietary products Beamstack sells or hosts | All-rights-reserved + Beamstack Commercial EULA |
| **BLF-Dedicated** | A client-operated private instance under contract | Beamstack Dedicated Deployment Agreement |

See [`FRAMEWORK.md`](FRAMEWORK.md) for the full definitions and the current
project assignments.

## Using this in a project

```sh
# from the target project's repo root
/path/to/beamstack-licensing/scripts/apply-tier.sh --tier community --project "Road Designer"
```

Then fill the `{{PLACEHOLDERS}}` it leaves in `NOTICE`, commit, and record the
assignment in `DECISIONS.md`.

## Licensing of this repository

The framework documents and templates in this repo are released under
**CC0-1.0** (public domain dedication — see [`LICENSE`](LICENSE)) so any Beamstack
project, or anyone else, may copy and adapt them freely. The one exception is
[`licenses/BCL-1.1.txt`](licenses/BCL-1.1.txt): it is the canonical text of the
Beamstack Community License, and its own Section 10 governs how it may be
modified and re-published. "Beamstack" and the product names are trademarks —
see [`TRADEMARKS.md`](TRADEMARKS.md).
