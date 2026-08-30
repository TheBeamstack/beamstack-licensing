# BLF-Community-Network

**Status:** active · **Framework:** BLF v1.0 · **Example:** *(reserved — no project yet)*

Everything in **[BLF-Community](community.md)** — source-available, no sale,
Beamstack brand carried, file-level copyleft — **plus AGPL-style network
copyleft**: if you deploy a *modified* version so others use it over a network,
you must offer them your source.

Use this tier for a source-available product (or a component of one) whose value
is the **running deployment** — a hosted service, a browser app, a
collaboration layer — where a competitor spinning up a modified free instance
and giving back only attribution would be a real threat, but where the OSI "open
source" label is not required (if it is, use **[BLF-Open](open.md)** with AGPL).

## Instrument

**Beamstack Community License 1.1 with the Exhibit C notice attached** —
[`../licenses/BCL-1.1.txt`](../licenses/BCL-1.1.txt), shipped verbatim, with the
**Exhibit C block also pasted at the top of `LICENSE` and into `NOTICE`** so
§3.8 is unambiguously activated.

SPDX: **`LicenseRef-BCL-1.1-Network`**.

### What §3.8 adds over BLF-Community

- **Trigger:** a *Network Deployment* of a *modified* version — expressly
  including code served for **in-browser / client-side execution**, and access
  via a **UI, an API, or an automated agent** (this closes the gap a literal
  AGPL §13 leaves for single-page apps).
- **Obligation:** offer those users the **Corresponding Source** of your
  version — the modified covered files **plus** the scripts/config/build
  definitions needed to build and run it — at no charge, under BCL.
- **Unmodified deployments** satisfy §3.8 by pointing at Beamstack's public
  source.
- **Preserved per-file boundary:** §3.8 does **not** reach separately-authored
  plugins, extensions, data-defined definitions, format codecs, themes, or user
  scripts that are not themselves covered software — so a plugin/content
  ecosystem is not chilled.
- **No cure by payment:** the source obligation is not satisfied or avoided by
  any fee, and it does not grant a right withheld by §3.6.

## Repository checklist

Same as [BLF-Community](community.md), with these differences:

- [ ] `LICENSE` = [`../licenses/BCL-1.1.txt`](../licenses/BCL-1.1.txt) verbatim,
      **with the Exhibit C notice block prepended** (copy it from the end of the
      BCL text).
- [ ] `NOTICE` — include the Exhibit C notice text.
- [ ] SPDX headers: `SPDX-License-Identifier: LicenseRef-BCL-1.1-Network`.
- [ ] README licence section from
      [`../templates/readme-license-section/community-network.md`](../templates/readme-license-section/community-network.md).
- [ ] The product's own deployment exposes a "Source code" link (satisfies §3.8
      for the unmodified case and models compliance for forks).

## Not for

Products where "open source" is the strategic point — use **[BLF-Open](open.md)**
with AGPL-3.0-only instead; it gives the same network-copyleft protection while
keeping the recognised label.
