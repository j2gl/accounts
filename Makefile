include .env

.PHONY: default up start down logs 

default: up start logs

up:
	docker compose --env-file .env -f docker-compose.yml up -d

start:
	docker compose --env-file .env -f docker-compose.yml start

down:
	docker compose --env-file .env -f docker-compose.yml down

logs:
	docker compose --env-file .env -f docker-compose.yml logs -f

clean:
	docker compose --env-file .env -f docker-compose.yml down --volumes --remove-orphans
	rm -rf postgres/data/*
