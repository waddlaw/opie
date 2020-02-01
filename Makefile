.PHONY: stack-dev
stack-dev:
	stack build --fast --file-watch --ghc-options "-j4 +RTS -A128m -n2m -qg -RTS"

.PHONY: cabal-dev
cabal-dev:
	cabal build --flag dev --ghc-options "-j4 +RTS -A128m -n2m -qg -RTS"

.PHONY: fmt
fmt:
	$(CURDIR)/script/format.sh

.PHONY: cabal-fmt
cabal-fmt:
	cabal-fmt -i *.cabal

.PHONY: lint
lint:
	hlint app src test bench