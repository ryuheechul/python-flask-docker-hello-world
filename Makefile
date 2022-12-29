.PHONY: up
up: pyrightconfig.json build
	docker compose up

.PHONY: run
run: build
	docker compose run web

.PHONY: build
build:
	docker compose build

.PHONY: down
down:
	docker compose down

.PHONY: cp-site
cp-site:
	mkdir -p from-container/usr/local/lib
	docker compose cp web:/usr/local/lib/python3.10 from-container/usr/local/lib

pyrightconfig.json:
	./gen-pyrightconfig-json.sh
