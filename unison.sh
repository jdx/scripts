#!/usr/bin/env bash
set -euo pipefail

watchexec -w /Users/jdx/dot/unison/cloud.prf -r -- unison -ui text cloud -repeat watch
