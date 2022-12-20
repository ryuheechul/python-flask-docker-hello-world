.PHONY: run
run: build
	docker compose up

.PHONY: build
build:
	docker compose build
