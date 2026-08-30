#!/usr/bin/env bash
# SPDX-License-Identifier: CC0-1.0
#
# apply-tier.sh — scaffold Beamstack License Framework files into a project repo.
#
#   apply-tier.sh --tier <open|community|community-network|commercial|dedicated> \
#                 --project "Human Name" [--into /path/to/repo] [--force]
#
# Copies the right LICENSE / NOTICE / CONTRIBUTING / CLA / TRADEMARKS pointer /
# THIRD-PARTY-NOTICES / README-licence-section into the target repo, with
# {{PROJECT_NAME}} substituted. It never overwrites an existing file unless
# --force is given. It does NOT commit, and it does NOT fetch upstream OSI
# licence texts for the Open tier (get those from spdx.org / gnu.org yourself).
#
# After running: fill remaining {{PLACEHOLDERS}} (esp. in NOTICE), paste the
# README-licence-section into the repo README, add SPDX headers, and record the
# assignment in beamstack-licensing/DECISIONS.md.

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"   # repo root of beamstack-licensing
TIER="" ; PROJECT="" ; INTO="$(pwd)" ; FORCE=0

while [ $# -gt 0 ]; do
  case "$1" in
    --tier) TIER="${2:-}"; shift 2 ;;
    --project) PROJECT="${2:-}"; shift 2 ;;
    --into) INTO="${2:-}"; shift 2 ;;
    --force) FORCE=1; shift ;;
    -h|--help) grep '^#' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "unknown arg: $1" >&2; exit 2 ;;
  esac
done

case "$TIER" in
  open|community|community-network|commercial|dedicated) ;;
  *) echo "ERROR: --tier must be one of open|community|community-network|commercial|dedicated" >&2; exit 2 ;;
esac
[ -n "$PROJECT" ] || { echo "ERROR: --project \"Name\" is required" >&2; exit 2; }
[ -d "$INTO" ]    || { echo "ERROR: --into path does not exist: $INTO" >&2; exit 2; }

sub() { sed "s#{{PROJECT_NAME}}#${PROJECT}#g" ; }
put() {  # put <dest-relative> <content-on-stdin>
  local dest="$INTO/$1"
  if [ -e "$dest" ] && [ "$FORCE" -ne 1 ]; then
    echo "  skip (exists): $1   [--force to overwrite]"
  else
    mkdir -p "$(dirname "$dest")"
    cat > "$dest"
    echo "  wrote: $1"
  fi
}

echo "Applying tier '$TIER' for project '$PROJECT' into: $INTO"

# --- LICENSE -----------------------------------------------------------------
case "$TIER" in
  community)
    sub < "$HERE/licenses/BCL-1.1.txt" | put "LICENSE"
    ;;
  community-network)
    { awk '/^Exhibit C - Network Use Notice$/{f=1} f' "$HERE/licenses/BCL-1.1.txt"
      echo ; echo "================================================================================"
      echo "(Exhibit C is attached above: Section 3.8 Network Use is ACTIVE for this project.)"
      echo "================================================================================" ; echo
      cat "$HERE/licenses/BCL-1.1.txt"
    } | sub | put "LICENSE"
    ;;
  open)
    put "LICENSE.TODO" <<EOF
Open tier: put the verbatim upstream licence here as LICENSE.
  - network-deployed / could be:  AGPL-3.0-only  ->  https://spdx.org/licenses/AGPL-3.0-only.html
  - library (file copyleft):      MPL-2.0        ->  https://spdx.org/licenses/MPL-2.0.html
  - library (permissive):         Apache-2.0     ->  https://spdx.org/licenses/Apache-2.0.html
Do not retype it; download the canonical text. Then delete this file.
EOF
    ;;
  commercial|dedicated)
    put "LICENSE" <<EOF
Copyright (C) 2026 Beamstack. All rights reserved.

This software is proprietary and confidential. It is licensed, not sold, and
only under a written Beamstack Commercial License / EULA or a Beamstack
Dedicated Deployment Agreement. No right to use, copy, modify, distribute, host,
sublicense, reverse-engineer, or create derivative works is granted except as
expressly stated in such an agreement.

"Beamstack" is the trading name of Abdellah Daoudi (sole proprietor, Kingdom of
Morocco) pending incorporation, and is a registered trademark (OMPIC).

Contact: askdaoudi@gmail.com
EOF
    ;;
esac

# --- NOTICE ----------------------------------------------------------------
sub < "$HERE/templates/NOTICE" | put "NOTICE"

# --- THIRD-PARTY-NOTICES -------------------------------------------------------
sub < "$HERE/templates/THIRD-PARTY-NOTICES.md" | put "THIRD-PARTY-NOTICES.md"

# --- TRADEMARKS pointer -----------------------------------------------------
put "TRADEMARKS.md" <<EOF
# Trademarks

"Beamstack", "$PROJECT", and the Beamstack logo are trademarks. No licence in
this repository grants rights in them. See the Beamstack Trademark Policy:
https://github.com/TheBeamstack/beamstack-licensing/blob/main/TRADEMARKS.md

A fork must use a different name.
EOF

# --- CONTRIBUTING + CLA (Open / Community tiers) -----------------------------
case "$TIER" in
  open|community|community-network)
    sub < "$HERE/templates/CONTRIBUTING.md" | put "CONTRIBUTING.md"
    sub < "$HERE/templates/CLA.md" | put "CLA.md"
    ;;
esac

# --- README licence section (as a standalone file to paste in) ---------------
snippet="community" ; [ "$TIER" = "community-network" ] && snippet="community-network"
[ "$TIER" = "open" ] && snippet="open"
[ "$TIER" = "commercial" ] && snippet="commercial"
[ "$TIER" = "dedicated" ] && snippet="dedicated"
sub < "$HERE/templates/readme-license-section/$snippet.md" | put "LICENSE-SECTION.md"

cat <<EOF

Done. Next:
  1. Fill the {{PLACEHOLDERS}} left in NOTICE (and LICENSE-SECTION.md).
  2. Paste LICENSE-SECTION.md into the project README under a "## Licence"
     heading, then delete LICENSE-SECTION.md.
  3. Open tier: download the real upstream LICENSE text (see LICENSE.TODO).
  4. Add SPDX headers to source files:
       SPDX-FileCopyrightText: 2026 Beamstack <https://beam-stack.com>
       SPDX-License-Identifier: <AGPL-3.0-only|MPL-2.0|Apache-2.0|LicenseRef-BCL-1.1|LicenseRef-BCL-1.1-Network|LicenseRef-Beamstack-Commercial|LicenseRef-Beamstack-Dedicated>
  5. Record the assignment: add a BLF-D entry in beamstack-licensing/DECISIONS.md.
EOF
