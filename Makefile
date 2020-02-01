.PHONY: dev
cabal-dev:
	cabal build

.PHONY: pedantic
pedantic:
	cabal test --no-run-tests --flag pedantic

.PHONY: test
test:
	cabal test

.PHONY: repl
repl:
	cabal repl -b unicode-show

.PHONY: bench
bench:
	cabal bench

.PHONY: fmt
fmt:
	$(CURDIR)/script/format.sh

.PHONY: cabal-fmt
cabal-fmt:
	cabal-fmt -i *.cabal

.PHONY: lint
lint:
	hlint app src test bench

.PHONY: travis
travis:
	haskell-ci cabal.project --output .travis.yml

.PHONY: pr
pr:
	test fmt cabal-fmt lint travis

.PHONY: update
update:
	$(CURDIR)/script/update.sh