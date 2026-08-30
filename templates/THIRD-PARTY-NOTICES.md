# Third-party notices — {{PROJECT_NAME}}

{{PROJECT_NAME}} is built on the third-party packages listed below. Each is
distributed by its own authors under its own licence; none is owned by Beamstack.
The full licence text of each ships inside that package's own distribution.

This file is one of the Notice Files that must travel with the software in every
redistribution (for Community-tier projects this is required by BCL §3.4).

## Runtime dependencies

| Package | Version (pin/range) | Licence | SPDX | Notes |
|---|---|---|---|---|
| {{example}} numpy | `>=1.26,<3.0` | BSD 3-Clause | `BSD-3-Clause` | |
| … | | | | |

## Build / dev-only dependencies

| Package | Version | Licence | SPDX |
|---|---|---|---|
| … | | | |

## Compatibility review

- Record here whether any dependency is **copyleft** (GPL / LGPL / AGPL / MPL) or
  **source-available**, and how it is used (statically linked, dynamically
  linked, separate process, npm runtime dep, build-only).
- For a **BLF-Commercial / BLF-Dedicated** (proprietary) project: GPL/AGPL
  dependencies are generally **not permissible**; LGPL is usually acceptable via
  dynamic linking or a documented relink path — state which, and mirror that
  reasoning in `NOTICE`.
- For a **BLF-Community[-Network]** project: check any copyleft or
  source-available dependency against BCL §3 before shipping.
- For a **BLF-Open** project: check compatibility with the chosen upstream
  licence (e.g. Apache-2.0 code is GPL-3.0/AGPL-3.0 compatible one-way; GPL-2.0-
  only is not).
