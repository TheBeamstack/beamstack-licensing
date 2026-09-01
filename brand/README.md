# Beamstack brand kit

The Beamstack mark, palette, and typography, plus the **Attribution Mark**
rules that the Beamstack Community License 1.1 (`BCL-1.1`) §3.7 obliges
Community-tier deployments to follow. This file is the "closes the licence's
open reference" file named in [`FRAMEWORK.md`](../FRAMEWORK.md) §3 and
`NOTICE`'s `HOW TO COMPLY` section.

> **Status.** This kit documents a **newly designed mark** (a `>` prompt
> chevron, a three-bar stack, and a beam on a pinned support and a roller —
> see "The mark" below). It has not yet been published at
> https://beam-stack.com or set as the GitHub org avatar. See "Open items"
> and the PR description for why that matters for licence compliance today.

## The mark

Read left to right, top to bottom: the **prompt** (`>`) is software, the
**stack** (three bars) is the name, and a **beam resting on a pinned support
and a roller** is the first diagram of a statics course. The left support is
fixed to the beam (*appui articulé*); the right one sits on its roller line,
free to translate (*appui simple*) — the roller's line is drawn beneath it.

| File | Use |
|---|---|
| [`mark-full-on-night.svg`](mark-full-on-night.svg) | Full mark for dark grounds. Chevron + beam in Signal blue `#4C8DFF`; stack + supports in Paper white `#E8EDF4`. No background — composite onto Night `#0B0E13` or another dark ground. |
| [`mark-full-on-white.svg`](mark-full-on-white.svg) | Full mark for light grounds. Chevron + beam in Deep blue `#2563D8`; stack + supports in Night `#0B0E13` (see the contrast note under Palette for why `#2563D8` and not `#4C8DFF`). |
| [`mark-40px.svg`](mark-40px.svg) | The full mark at its practical size floor — 40px. Below this the three 5.5-unit bars and the 6-unit chevron start to blur. Delivered in the on-white colourway (see "Colourway choice for the small sizes" below). |
| [`mark-16px-reduced.svg`](mark-16px-reduced.svg) | The reduced mark for favicon / 16px use. Drops the chevron and the stack; keeps only the beam, the pinned support, and the roller. Delivered in the on-white colourway. |
| [`wordmark.svg`](wordmark.svg) | Lockup: **Beam** in Paper white `#E8EDF4` + **stack** in Signal blue `#4C8DFF`, Archivo 700, letter-spacing `-.024em`. Designed for dark grounds, matching the two colours it uses. |

All files are standalone SVGs — explicit hex fills, no `currentColor`, no CSS
custom properties, `xmlns` declared, parsed with `xml.dom.minidom` before
being committed.

### Why the 16px mark drops the prompt and the stack

At favicon size, three 5.5-unit bars and a 6-unit chevron collapse into grey
mush. The reduced mark keeps only the load-bearing idea — beam, pinned
support, roller — at heavier weight. A mark and its favicon are different
drawings of the same idea, not the same file scaled down.

### Colourway choice for the small sizes

The recovered kit demonstrated the 40px and 16px marks with theme-adaptive
CSS (`var(--link)` / `currentColor`), which resolves differently on light vs.
dark systems and isn't something a standalone SVG file can carry. Since
small-format marks (favicons, issue-tracker icons, browser chrome) are
composited onto light UI far more often than dark, both are shipped here in
the **on-white** colourway — Deep blue `#2563D8` + Night `#0B0E13` — which is
also the accessible pairing per the contrast note below. An on-night version
of either (Signal blue + Paper white, matching `mark-full-on-night.svg`) is a
straightforward recolour if a dark-chrome use case comes up; none is shipped
here because the recovered kit didn't specify one.

## Palette

Decoded from the current org avatar, so a mark built on this palette sits
continuously with everything already published.

| Name | Hex | Role |
|---|---|---|
| Night | `#0B0E13` | Avatar ground, hero panels, social cards |
| Signal blue | `#4C8DFF` | Beam and prompt on dark grounds |
| Paper white | `#E8EDF4` | Stack, supports, type on dark |
| Deep blue | `#2563D8` | The mark and links on white grounds |

**Accessibility.** `#4C8DFF` reaches only ~2.6:1 contrast on white — below
the 4.5:1 WCAG AA threshold for text. Light grounds use `#2563D8` instead.
Same hue family, so there is no visible seam between the two contexts.

## Typography

| Role | Family | Weight | Notes |
|---|---|---|---|
| Display | Archivo | 600–700 | Wordmark, headings |
| Body | IBM Plex Sans | 400–600 | Prose |
| Mono | IBM Plex Mono | 400–500 | Code, paths, data |

Fallback stacks: `Archivo, system-ui, -apple-system, sans-serif`;
`IBM Plex Sans, system-ui, -apple-system, sans-serif`;
`IBM Plex Mono, ui-monospace, Menlo, monospace`.

`wordmark.svg` and `social/card-template.svg` reference Archivo/IBM Plex Sans/
IBM Plex Mono by name with the fallback stacks above; a viewer without those
fonts installed renders the fallback, not missing text. For a pixel-exact
export, convert the text to outlined paths using the actual font files before
publishing.

## Clear space and minimum size

- **Minimum size:** 40px for the full mark; below that, use
  `mark-16px-reduced.svg` (or a mark built the same way) rather than scaling
  the full mark down further.
- **Clear space:** not specified in the recovered kit. Pending confirmation
  from whoever finishes the kit, this document sets it at one stack-bar's
  height (5.5 of the 64-unit grid, ≈ 8.6% of the mark's width) of empty
  margin on all sides — derived from the mark's own stroke weight, not an
  authored rule. Treat it as a placeholder convention, not a locked spec.

## Which variant on which ground

| Ground | Use |
|---|---|
| Night `#0B0E13` or other dark surface | `mark-full-on-night.svg`, `wordmark.svg` |
| White or other light surface | `mark-full-on-white.svg` |
| ≤40px on a light surface (favicons, chrome) | `mark-40px.svg`, or `mark-16px-reduced.svg` below 40px |

Do not place `mark-full-on-night.svg` on a light ground or vice versa — the
fills are chosen per-ground for contrast, not decoration.

## Attribution Mark rules (BCL-1.1 §3.7)

`BCL-1.1.txt` defines the **Attribution Mark** at §1.17 as:

> "(a) the text 'Powered by Beamstack'; and (b) the Beamstack name and logo
> in the form published at https://beam-stack.com."

Note the anchor in (b): the licence's Attribution Mark is whatever is
**currently published at https://beam-stack.com** — not this `brand/`
directory directly. Until the site is updated to the mark documented here,
a Community-tier deployment complies by using whatever mark is live on
beam-stack.com today. See "Open items" below.

§3.7 requires, of anyone who Distributes or Deploys the Covered Software or
a Modification:

- **§3.7(a) — Preserve notices.** Keep every copyright, licence, and
  trademark notice in the Source Code Form intact, and include the Notice
  Files (`LICENSE`, `NOTICE`, `THIRD-PARTY-NOTICES.md`), unmodified, with
  every distribution in Source Code or Executable Form.
- **§3.7(b) — User interface.** If the work presents a UI, that UI must
  display the Attribution Mark — the text "Powered by Beamstack" or the
  Beamstack logo — such that it is: legible and not materially smaller or
  less prominent than other third-party credits shown in the same place;
  located where a user would reasonably look for credits or legal
  information (an "About", "Credits", "Legal", or "Acknowledgements" screen,
  a persistent footer, a splash screen, or an equivalent documentation page —
  it need not appear on every screen); and, where the medium supports
  hyperlinks, linked to https://beam-stack.com. A work with genuinely no UI
  (a library, a CLI-only tool) satisfies (b) by complying with (a), (c), and
  (d) instead.
- **§3.7(c) — Documentation.** Any README, "about" page, product
  description, or academic/technical publication describing the work must
  state that it is **"based on Beamstack software"** or **"Powered by
  Beamstack"**, with a reference or hyperlink to https://beam-stack.com.
- **§3.7(d) — Package metadata.** Where the work ships package metadata
  (e.g. a `license` field in `package.json`, or Python package metadata),
  that metadata must identify the licence as `LicenseRef-BCL-1.1` (or
  `LicenseRef-BCL-1.1-Network` under Exhibit C) or as "Beamstack Community
  License 1.1", and must not represent the software as under a different
  licence.
- **§3.7(e) — Scope of trademark permission.** Paragraphs (b)–(d) grant a
  **limited, non-exclusive permission to use the Attribution Mark solely to
  the extent required to comply with §3.7** — no broader right to the
  Beamstack name, logo, or project names. Specifically prohibited: using
  "Beamstack" or a confusingly similar term as, or as part of, your own
  product/service/organisation name; using the Attribution Mark to state or
  imply Beamstack's endorsement, sponsorship, or affiliation; or altering
  the Beamstack logo. Accurate "based on" / "compatible with" statements
  remain permitted.
- **§3.7(f) — Relief.** Beamstack may grant a written waiver or variation of
  §3.7 — see the licence's "FUTURE AND COMMERCIAL LICENSING" section.

None of the above is paraphrased into something the licence doesn't say —
where this document states an obligation, it is quoting or closely tracking
§3.7's own text; see [`../licenses/BCL-1.1.txt`](../licenses/BCL-1.1.txt) for
the controlling text.

**Practical checklist for a Community-tier repo:**

1. Show "Powered by Beamstack" (text or logo) somewhere a user would look for
   credits, linked to https://beam-stack.com — §3.7(b).
2. Say "based on Beamstack software" in the README, linked — §3.7(c).
3. Tag package metadata `LicenseRef-BCL-1.1` (or `-Network`) — §3.7(d).
4. Keep `LICENSE`, `NOTICE`, `THIRD-PARTY-NOTICES.md` intact — §3.7(a).
5. Use the mark itself only as shipped here — no recolouring, no redrawing,
   no use as your own brand — §3.7(e), and see
   [`../TRADEMARKS.md`](../TRADEMARKS.md) for the wider trademark policy this
   licence permission sits inside.

## Open items — not done here, and why

- **460×460 avatar PNG.** The recovered kit's "what ships" list calls for an
  avatar export at 460×460. **Not produced in this PR.** This machine has no
  SVG renderer (`rsvg-convert`, Inkscape, ImageMagick, a headless browser,
  `cairosvg`, Pillow — none installed), so a PNG cannot be generated here
  without either hand-authoring raster data (not done — that would not be a
  faithful export) or fabricating a false "done" status. Render
  `mark-full-on-night.svg` to a 460×460 PNG on a machine with a real SVG
  renderer, then this line item is complete.
- **Publishing to https://beam-stack.com.** BCL-1.1 §1.17(b) and
  `TRADEMARKS.md` §1 both define the logo by reference to what's published on
  the live site. Shipping this `brand/` directory does not itself update that
  site or the GitHub org avatar (out of scope for this PR — see its
  description).
- **`TRADEMARKS.md`.** Deliberately not modified here — see the PR
  description for the open question to the mark owner.
