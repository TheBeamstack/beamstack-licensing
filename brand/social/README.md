# Social preview cards

GitHub renders a 1280×640 image on link unfurls (Slack, Twitter/X, chat
previews, etc.) called the repository's **social preview**. There is no
GitHub API for it — each repository's card is set by hand, per repo, under
**Settings → General → Social preview** in that repository.

## What's here

[`card-template.svg`](card-template.svg) — a 1280×640 SVG template matching
the Night ground, mark, wordmark-adjacent name, and mono footer of the
recovered identity kit. It uses three placeholder tokens, in the same
`{{TOKEN}}` style as [`../../templates/NOTICE`](../../templates/NOTICE):

| Token | Fill with |
|---|---|
| `{{PROJECT_NAME}}` | The repo's display name (e.g. `SmartBar`) |
| `{{ONE_LINE_DESCRIPTION}}` | A short description, ideally ≲34 characters per line. Longer text needs a second `<text>` line (copy the existing one, shift `y` by ~24) — the template does not auto-wrap. |
| `{{LICENCE_TAG}}` | e.g. `AGPL-3.0-only`, `LicenseRef-BCL-1.1`, `Beamstack Commercial EULA` |

The footer's three items (`BEAMSTACK`, the licence tag, `beam-stack.com`) are
positioned with approximate fixed spacing. Because every repo's licence tag
is a different length, expect to nudge the `x` of the second and third
footer `<text>` elements by hand once real text replaces the placeholders —
this is a per-repo hand-edited asset, not a parametric generator.

## Producing the actual PNG/JPG GitHub needs

GitHub's social preview upload expects a raster image (PNG or JPG), not SVG.
**This box has no SVG renderer** (no `rsvg-convert`, Inkscape, ImageMagick,
headless Chromium, `cairosvg`, or Pillow), so no card has been rasterised or
uploaded as part of this PR — only the SVG source template. To finish a
card:

1. Copy `card-template.svg`, fill in the three tokens for the target repo.
2. Render it to a 1280×640 PNG on a machine that has an SVG renderer (a
   browser screenshot at 1280×640, Inkscape, `rsvg-convert`, or a design
   tool all work — verify the exported PNG is exactly 1280×640, since
   GitHub crops/scales otherwise).
3. Upload it by hand under that repo's **Settings → General → Social
   preview**.

Do this once per public repository that should carry the brand in link
unfurls. No card has been uploaded to any repository's GitHub settings as
part of this PR — that is a GitHub-settings change and out of scope here.
