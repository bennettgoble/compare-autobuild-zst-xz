#!/usr/bin/env bash

set -e

# Recompress zst files as xz

for file in zst/*.zst; do
  file="$(basename "$file")"
  zstd -dc < "zst/$file" | xz -zc > "xz/${file%.zst}.xz"
done
