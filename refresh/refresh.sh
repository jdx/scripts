#!/usr/bin/env bash
set -euxo pipefail

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate bash --shims)"
PATH="$HOME/.rustup/bin:$HOME/.cargo/bin:$PATH"

brew upgrade
rustup up
cargo install-update --all

if type -q brazil-package-cache; then
  brazil-package-cache clean
fi
