up:
	docker compose up -d

down:
	docker compose down

status:
	docker compose ps
	
hello_world:
	docker run --rm script-service

sqlite: 
	.read database/schema.sql
