#!/bin/bash
# Sanity checks for xss.txt: no blank lines, no duplicate lines.
set -euo pipefail
cd "$(dirname "$0")/.."

file="xss.txt"
total=$(wc -l < "$file")
blanks=$(grep -c '^$' "$file" || true)
unique=$(sort "$file" | uniq | wc -l)

echo "Lines: $total  Blank: $blanks  Unique: $unique"

if [ "$blanks" -ne 0 ]; then
  echo "FAIL: $file contains blank lines" >&2
  exit 1
fi

if [ "$unique" -ne "$total" ]; then
  echo "FAIL: $file contains $((total - unique)) duplicate line(s)" >&2
  exit 1
fi

echo "OK: $file has $total unique, non-blank payload lines"
