#!/bin/sh
# Regenerates assets/images/gallery/manifest.json from the current contents
# of assets/images/gallery/. Run this after adding or removing gallery photos,
# then commit the updated manifest.json.
set -eu

cd "$(dirname "$0")/../assets/images/gallery"

{
  echo "["
  ls *.jpg *.jpeg *.png 2>/dev/null | sort -V | awk '
    NR > 1 { print prev "," }
    { prev = "  \"" $0 "\"" }
    END { if (NR > 0) print prev }
  '
  echo "]"
} > manifest.json

echo "Wrote $(grep -c '\"' manifest.json) entries to manifest.json"
