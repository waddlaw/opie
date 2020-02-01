# Project

## install tools

- [haskell/ghcup](https://gitlab.haskell.org/haskell/ghcup)
  - [ghcup official page](https://www.haskell.org/ghcup/)

```shell
$ curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
$ ghcup -V
0.0.8
```

- [commercialhaskell/stack](https://github.com/commercialhaskell/stack)
  - [stack User Guide](https://docs.haskellstack.org/en/stable/README/)

```shell
$ curl -sSL https://get.haskellstack.org/ | sh
$ stack --version
Version 2.1.3, Git revision 0fa51b9925decd937e4a993ad90cb686f88fa282 (7739 commits) x86_64 hpack-0.31.2
```

- [haskell/cabal](https://github.com/haskell/cabal)
  - [Cabal User Guide](https://www.haskell.org/cabal/users-guide/)

```shell
$ ghcup install-cabal
$ cabal -V
cabal-install version 3.0.0.0
compiled using version 3.0.0.0 of the Cabal library
```

- [ghc/ghc](https://gitlab.haskell.org/ghc/ghc)
  - [GHC Dev wiki](https://gitlab.haskell.org/ghc/ghc/wikis/home)

```shell
$ ghcup install 8.8.2
$ ghcup set 8.8.2
$ ghc -V
The Glorious Glasgow Haskell Compilation System, version 8.8.2
```

- [haskell-CI/haskell-ci](https://github.com/haskell-CI/haskell-ci)

```shell
$ cabal update
$ cabal install haskell-ci
$ haskell-ci -V
0.8
```

- [phadej/cabal-fmt](https://github.com/phadej/cabal-fmt)

```shell
$ cabal update
$ cabal install cabal-fmt
$ cabal-fmt --version
0.1.2
```

- [tweag/ormolu](https://github.com/tweag/ormolu)

```shell
$ cabal update
$ cabal install ormolu
$ ormolu --version
ormolu 0.0.3.1 UNKNOWN UNKNOWN
using ghc-lib-parser 8.8.2
```

- [ndmitchell/hlint](https://github.com/ndmitchell/hlint)

```shell
$ cabal update
$ cabal install hlint
$ hlint -V
HLint v2.2.9, (C) Neil Mitchell 2006-2020
```

## How to use these tools

### cabal-fmt

```shell
$ cabal-fmt -i *.cabal
```

### Ormolu

```shell
$ ormolu -p -m inplace $(find app -type f -name "*.hs")
$ ormolu -p -m inplace $(find src -type f -name "*.hs")
$ ormolu -p -m inplace $(find bench -type f -name "*.hs")
$ ormolu -p -m inplace $(find test -type f -name "*.hs")
```

### hlint

```shell
$ hlint 
```

### Travis CI

```shell
$ haskell-ci cabal.project --output .travis.yml
```
