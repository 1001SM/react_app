PROJECTNAME ?= react-app


up:
	docker compose up -d

build:
	docker compose build

rebuild:
	docker-compose build --no-cache

rm-sh:
	docker compose run --rm node sh -c 'npx create-react-app $(PROJECTNAME) --template typescript'

sh:
	docker compose exec node sh

down:
	docker compose down