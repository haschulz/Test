start-all:
	$(eval export docker_image := run)
	@make _start_all
start-database:
	$(eval export docker_image := run)
	@make _start_database
stop-database:
	$(eval export docker_image := run)
	@make _stop_database
stop-all:
	$(eval export docker_image := run)
	@make _stop_all
start-backend:
	$(eval export docker_image := run)
	@make _start_backend

start-frontend:
	$(eval export docker_image := run)
	@make _start_frontend

stop-backend:
	$(eval export docker_image := run)
	@make _stop_backend

_start_all:
	@docker-compose  \
	-f docker-compose-backend.yml \
	-f docker-compose-frontend.yml \
	up \

_stop_all:
	@docker-compose  \
	-f docker-compose-backend.yml \
	-f docker-compose-frontend.yml \
	down \

_start_backend:
	@docker-compose  \
	-f docker-compose-backend.yml \
	up \

_stop_backend:
	@docker-compose  \
	-f docker-compose-backend.yml \
	down \

_start_database:
	@docker-compose  \
	-f docker-compose-database.yml \
	up \

_stop_database:
	@docker-compose  \
	-f docker-compose-database.yml \
	down \

_start_frontend:
	@docker-compose  \
	-f docker-compose-frontend.yml \
	up \

