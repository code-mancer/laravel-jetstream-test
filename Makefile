init: rebuild up migrate seed npm_install npm_build

rebuild:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

bash:
	docker-compose exec laravel-jetstream-app /bin/bash

migrate:
	docker-compose exec laravel-jetstream-app php artisan migrate

seed:
	docker-compose exec laravel-jetstream-app php artisan db:seed

npm_install:
	docker-compose exec laravel-jetstream-app npm install

npm_build:
	docker-compose exec laravel-jetstream-app npm run build

logs:
	docker-compose logs -f
