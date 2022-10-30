repl:
	racket -I typed/racket

deps:
	@./scripts/deps.sh

repos: ./scripts/repos.sh
	@./scripts/repos.sh

fmt:
	raco fmt -i src/main.scm


.PHONY: repl deps
