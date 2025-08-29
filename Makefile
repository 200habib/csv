build:
	docker compose down
	docker compose up --build -d

down:
	docker compose down

ps_a:
	docker ps -a

ps:
	docker ps

create_data_sqlite:
	docker exec -i sqlite-service sqlite3 /data/schema.sqlite < ./sqlite_data/schema.sql
	docker exec -it sqlite-service sqlite3 /data/schema.sqlite
	
sqlite:
	docker exec -it sqlite-service sqlite3 /data/schema.sqlite

python:
	docker exec -it csv-python-app sh

stript:
	cd data/data_pipeline/clean_and_export.py