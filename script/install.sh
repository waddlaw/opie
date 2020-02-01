#!/usr/bin/bash
set -e

export LANG="C.UTF-8"

ormolu -p -m inplace "$(find app -type f -name "*.hs")"
ormolu -p -m inplace "$(find src -type f -name "*.hs")"
ormolu -p -m inplace "$(find test -type f -name "*.hs")"
ormolu -p -m inplace "$(find bench -type f -name "*.hs")"