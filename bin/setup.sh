#!/usr/bin/env bash

[[ $OSTYPE =~ darwin ]] || \
	{ echo -e "😞 sorry this script works only on mac"; exit 1; }

command -v code &>/dev/null || { echo -e "🦄 installing vs code"; } \
	&& brew cask install visual-studio-code &>/dev/null

cat "$(git rev-parse --show-toplevel)/extensions.txt" | while read ext; do
  echo -e "✨ installing extensions"
  code --install-extension $ext &>/dev/null && { echo -e "✅ $ext is installed "; }
done

exit 0;
