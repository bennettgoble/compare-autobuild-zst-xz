#!/usr/bin/env bash

set -e

decompress_zst() {
  for f in "$@"; do
    zstd -dc < "$f" > /dev/null
  done
}

decompress_xz() {
  for f in "$@"; do
    xz -dc < "$f" > /dev/null
  done
}

echo "Decompressing using zst"
time decompress_zst zst/*.zst

echo "Decompressing using xz"
time decompress_xz xz/*.xz
