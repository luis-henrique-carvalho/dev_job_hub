CONTAINER_NAME ?= web

up:
	@docker compose up

down:
	@docker compose down

shell:
	@docker exec -it $(CONTAINER_NAME) \
	sh -c "/bin/bash || /bin/sh"
