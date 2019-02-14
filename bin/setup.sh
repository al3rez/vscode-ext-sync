#!/usr/bin/env bash


command -v code &>/dev/null || { echo -e "🥊 code is is not installed"; exit 1; }

echo -e "✨ installing extensions"

cat extensions.txt | while read ext; do
  code --install-extension $ext &>/dev/null && { echo -e "✅ $ext is installed "; }
done
