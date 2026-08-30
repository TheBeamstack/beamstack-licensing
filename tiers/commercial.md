# BLF-Commercial

**Status:** active · **Framework:** BLF v1.0 · **Examples:** Miqdar, Maître d'Ouvrage (base)

Proprietary. The source is not public. Beamstack sells or hosts the product;
end users get a right to *use* it under the **Beamstack Commercial EULA**, not a
right to the source.

Use this tier for the "moat" products — anything whose value depends on not being
forkable, and anything sold into markets where a proprietary posture is expected.

## Instrument

- **`LICENSE`** in the repo = a short **all-rights-reserved notice**, not an
  open-source or source-available licence. Template below.
- **End users** accept the **Beamstack Commercial EULA** —
  [`../templates/COMMERCIAL-EULA.md`](../templates/COMMERCIAL-EULA.md) — at
  sign-up / installation / first use. This is the document that actually grants
  use rights and sets the limits.
- SPDX in source headers: **`LicenseRef-Beamstack-Commercial`**.

### `LICENSE` file text for a BLF-Commercial repo

```
Copyright (C) 2026 Beamstack. All rights reserved.

This software is proprietary and confidential. It is licensed, not sold, and
only under a written Beamstack Commercial License / EULA or a Beamstack
Dedicated Deployment Agreement. No right to use, copy, modify, distribute, host,
sublicense, reverse-engineer, or create derivative works of this software is
granted except as expressly stated in such an agreement.

"Beamstack" is the trading name of Abdellah Daoudi (sole proprietor, Kingdom of
Morocco) pending incorporation, and is a registered trademark (OMPIC).

Contact: askdaoudi@gmail.com
```

## Repository checklist

- [ ] Repo is **private**.
- [ ] `LICENSE` = the all-rights-reserved notice above.
- [ ] `NOTICE` from [`../templates/NOTICE`](../templates/NOTICE) (Commercial
      variant — states proprietary, lists third-party components).
- [ ] `THIRD-PARTY-NOTICES.md` — **critical here**: every bundled open-source or
      third-party component must be listed with its licence, and any copyleft
      (GPL/AGPL/LGPL) or source-available dependency must be cleared before it
      ships in a proprietary product. LGPL is usually OK via dynamic linking or a
      documented relink path; GPL/AGPL generally is not.
- [ ] SPDX headers: `SPDX-License-Identifier: LicenseRef-Beamstack-Commercial`.
- [ ] The EULA ([`../templates/COMMERCIAL-EULA.md`](../templates/COMMERCIAL-EULA.md))
      is filled in and **lawyer-reviewed before first sale**.
- [ ] Outside contributors (rare) sign the Beamstack CLA; internal contributors
      are covered by employment/contractor terms.
- [ ] If any client will run their own instance, also stand up
      **[BLF-Dedicated](dedicated.md)**.
- [ ] Record the assignment in [`../DECISIONS.md`](../DECISIONS.md).

## Not for

Anything Beamstack wants the community to be able to read, run, or fork — that is
a Community or Open tier.
