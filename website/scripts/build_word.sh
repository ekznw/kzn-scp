#!/usr/bin/env bash
# This script cn be used to convert qmd's with mermaid chunks to
# qmd's with fig paths inserted in place of the mermaid chunk.
# This is because quarto is not working with doing screen shots of
# the mermaid diagrams --- so a work around had to be made.

SRC="intro.qmd"
OUT="intro-docx.qmd"

# 1. Copy the source QMD
cp "$SRC" "$OUT"

# 2. Replace mermaid blocks with PNGs based on %% png: annotation
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
' "$SRC" > "$OUT"

# 3. Render DOCX (this will create intro.docx in the current directory)
quarto render "$OUT" --to docx -o intro.docx

# 4. Ensure _site exists and move the docx inside it
mkdir -p _site
mv intro.docx _site/

