#!/usr/bin/env bash

# This script converts a Quarto .qmd file containing mermaid chunks
# into a .qmd where those chunks are replaced by image paths (PNG),
# based on a "%% png: ..." annotation inside the mermaid chunk.
#
# Example usage:
#   ./mermaid2png.sh intro.qmd
#   ./mermaid2png.sh intro.qmd intro-docx.qmd
#   ./mermaid2png.sh intro.qmd intro-docx.qmd intro.docx
#
# This helps when Quarto's mermaid screenshots are not working as expected.

set -euo pipefail

usage() {
  echo "Usage: $0 SRC_QMD [OUT_QMD] [OUT_DOCX]"
  echo
  echo "  SRC_QMD   : Source .qmd file (required)"
  echo "  OUT_QMD   : Output .qmd with mermaid replaced (optional)."
  echo "              Default: <SRC_BASENAME>-docx.qmd"
  echo "  OUT_DOCX  : Name of the rendered .docx (optional)."
  echo "              Default: <SRC_BASENAME>.docx"
  exit 1
}

# ---- 1. Parse arguments ----
if [ $# -lt 1 ] || [ $# -gt 3 ]; then
  usage
fi

SRC="$1"

if [ ! -f "$SRC" ]; then
  echo "Error: source file '$SRC' not found." >&2
  exit 1
fi

# Strip directory and extension from SRC
SRC_BASENAME="$(basename "$SRC" .qmd)"

# OUT_QMD default: <basename>-docx.qmd
OUT_QMD="${2:-${SRC_BASENAME}-docx.qmd}"

# OUT_DOCX default: <basename>.docx
OUT_DOCX="${3:-${SRC_BASENAME}.docx}"

echo "Source QMD      : $SRC"
echo "Output QMD      : $OUT_QMD"
echo "Output DOCX     : $OUT_DOCX"
echo

# ---- 2. Replace mermaid blocks with PNG links in OUT_QMD ----
awk '
BEGIN {
  in_mermaid = 0
}
{
  # start of mermaid block
  if ($0 ~ /```{mermaid}/) {
    in_mermaid = 1
    png_path = ""   # reset
    next
  }

  # inside mermaid: look for png annotation
  if (in_mermaid == 1 && $0 ~ /%% png:/) {
    # extract PNG path from comment
    sub(/.*png:/, "", $0)
    gsub(/^ +| +$/, "", $0)
    png_path = $0
    next
  }

  # end of mermaid code block
  if (in_mermaid == 1 && $0 ~ /^```/) {
    in_mermaid = 0

    # write the replacement PNG markdown
    print "![](" png_path ")"
    next
  }

  # normal lines outside mermaid blocks
  if (in_mermaid == 0) {
    print $0
  }

}
' "$SRC" > "$OUT_QMD"

# ---- 3. Render DOCX from the modified QMD ----
quarto render "$OUT_QMD" --to docx -o "$OUT_DOCX"

# ---- 4. Ensure _site exists and move the docx inside it ----
mkdir -p _site
mv "$OUT_DOCX" _site/

echo "Done. DOCX available at _site/$OUT_DOCX"