# Contributing to {{PROJECT_NAME}}

Thanks for your interest. {{PROJECT_NAME}} is a **Beamstack** project on the
**{{BLF-Open | BLF-Community | BLF-Community-Network}}** tier of the
[Beamstack License Framework](https://github.com/TheBeamstack/beamstack-licensing).
Read that project's `LICENSE` (and `LICENSING.md` if present) before you start.

## Getting set up

{{PROJECT-SPECIFIC: clone, install, test commands. Point at the repo's own
architecture / conventions doc (e.g. CLAUDE.md / AGENTS.md / docs/).}}

## Pull requests

- Keep changes focused; one topic per PR. Add or update tests for anything
  behavioural.
- Match the style and conventions of the surrounding code.
- Don't add a dependency under a copyleft or source-available licence without
  raising it first — see `THIRD-PARTY-NOTICES.md`.
- New source files carry the standard header (below).

## Legal terms for contributions

By submitting a contribution you agree to **all** of the following.

### 1. Contributor License Agreement

You must have the **Beamstack Individual CLA** on file (or the entity CLA, if you
contribute on behalf of an employer). See [`CLA.md`](CLA.md). It is
Apache-ICLA-shaped: **you keep your copyright**, and you grant Beamstack a
perpetual, worldwide, royalty-free licence to use your contribution **and to
re-license it under other terms, including proprietary or commercial terms**,
plus a patent licence. This is what keeps Beamstack's commercial dual-licensing
option workable across every project.

How to sign: {{PROJECT-SPECIFIC — e.g. a CLA-assistant bot, or reply to your
first PR with the signature block from `CLA.md` §"How to sign", or email a
signed copy to askdaoudi@gmail.com. The maintainer records signatories in
`CONTRIBUTORS`/`AUTHORS`.}}

### 2. Developer Certificate of Origin

Every commit must be signed off (`git commit -s`):

```
Signed-off-by: Your Name <your.email@example.com>
```

certifying the [DCO 1.1](https://developercertificate.org/) — that you wrote the
contribution or have the right to submit it, and that you understand it is
public and recorded permanently.

### 3. No trademark rights

These terms grant you no right to use the "Beamstack" or "{{PROJECT_NAME}}"
names or the Beamstack logo beyond what `LICENSE` / `TRADEMARKS.md` already
allow.

## Standard source-file header

```
# SPDX-FileCopyrightText: 2026 Beamstack <https://beam-stack.com>
# SPDX-License-Identifier: {{AGPL-3.0-only | MPL-2.0 | Apache-2.0 | LicenseRef-BCL-1.1 | LicenseRef-BCL-1.1-Network}}
```

(comment syntax per language: `#` for Python/shell, `//` for TS/JS/C-family,
`<!-- -->` for HTML/Markdown.)

## Questions

Licensing or commercial questions: **askdaoudi@gmail.com**.
