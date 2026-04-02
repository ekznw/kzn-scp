#!/usr/bin/env bash
set -euo pipefail

LIST_FILE=".qmd2docx-list"
SCRIPT="./scripts/qmd2docx.sh"

# --- Check prerequisites ---
if [ ! -f "$LIST_FILE" ]; then
  echo "Error: $LIST_FILE not found."
  exit 1
fi

if [ ! -x "$SCRIPT" ]; then
  echo "Error: $SCRIPT not found or not executable."
  exit 1
fi

echo "Running batch conversion using $LIST_FILE..."
echo

# --- Today's date for suffix ---
DATE_SUFFIX=$(date +"%Y%m%d")

# --- Process each qmd in the list ---
while IFS= read -r QMD; do
  # skip empty or commented lines
  [[ -z "$QMD" || "$QMD" =~ ^# ]] && continue

  if [ ! -f "$QMD" ]; then
    echo "WARNING: File not found: $QMD — skipping" >&2
    continue
  fi

  echo "Processing: $QMD"

  # Run converter
  "$SCRIPT" "$QMD"

  BASENAME="$(basename "$QMD" .qmd)"
  INTERMEDIATE="${BASENAME}-docx.qmd"
  RENAMED="_site/${BASENAME}_${DATE_SUFFIX}.docx"

  # ---- Delete intermediate .qmd ----
  if [ -f "$INTERMEDIATE" ]; then
    echo "Deleting intermediate: $INTERMEDIATE"
    rm "$INTERMEDIATE"
  fi

  # ---- Determine possible docx output locations ----
  DOCX_WD="${BASENAME}.docx"          # Quarto sometimes writes here
  DOCX_SITE="_site/${BASENAME}.docx"  # Quarto sometimes writes here

  # ---- Rename final .docx ----
  if [ -f "$DOCX_WD" ]; then
    echo "Renaming working-dir output → ${RENAMED##*/}"
    mv "$DOCX_WD" "$RENAMED"

  elif [ -f "$DOCX_SITE" ]; then
    echo "Renaming _site output → ${RENAMED##*/}"
    mv "$DOCX_SITE" "$RENAMED"

  else
    echo "WARNING: Could not find DOCX for $BASENAME"
    echo "Checked: $DOCX_WD and $DOCX_SITE"
  fi

  # ---- Clean up stray Quarto HTML artifacts ----
  HTML_ARTIFACT="_site/${BASENAME}-docx.html"
  if [ -f "$HTML_ARTIFACT" ]; then
    echo "Deleting HTML artifact: $HTML_ARTIFACT"
    rm "$HTML_ARTIFACT"
  fi

  # ---- Clean up any associated -docx_files directories ----
  FILES_DIR="_site/${BASENAME}-docx_files"
  if [ -d "$FILES_DIR" ]; then
    echo "Deleting HTML resources folder: $FILES_DIR"
    rm -rf "$FILES_DIR"
  fi

  echo
done < "$LIST_FILE"

# ---- Final step: move completed DOCX files into docx_collab/YYYYMMDD ----
COLLAB_DIR="docx_collab/${DATE_SUFFIX}"
mkdir -p "$COLLAB_DIR"

echo "Moving final DOCX files to: $COLLAB_DIR"
mv _site/*.docx "$COLLAB_DIR"/

echo "Moved DOCX files to $COLLAB_DIR"

echo "Batch complete."