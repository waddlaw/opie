#!/bin/bash
set -e

export LANG="C.UTF-8"

cabal update
cabal install haskell-ci
cabal install hlint
cabal install ormolu
cabal install cabal-fmt

cabal install pretty-simple --lib
