#!/bin/bash
# Point the cask at a published Isle release: ./update.sh 1.4.0
set -euo pipefail
cd "$(dirname "$0")"
V="${1:?usage: ./update.sh <version>}"
TMP="$(mktemp -d)"
gh release download "v$V" -R ranvirskh/isle-cc -p "Isle-$V.zip" -D "$TMP"
SHA="$(shasum -a 256 "$TMP/Isle-$V.zip" | awk '{print $1}')"
sed -i '' -E "s/^  version \".*\"/  version \"$V\"/; s/^  sha256 \".*\"/  sha256 \"$SHA\"/" Casks/isle.rb
echo "Casks/isle.rb now points at v$V ($SHA)"
