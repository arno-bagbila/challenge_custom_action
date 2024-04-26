run: build
	docker run --rm print-entrypoint-action

build:
	docker build --tag print-entrypoint-action .

test:
	./entrypoint.sh
