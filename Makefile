repl:
	racket -I typed/racket

deps:
	@./scripts/deps.sh

repos: ./scripts/repos.sh
	@./scripts/repos.sh

.PHONY: repl deps
