.PHONY: run/docker
run/docker:
	docker compose up --remove-orphans --watch

.PHONY: db/migrations/new
db/migrations/new:
	@echo '🆕 Creating migration files for ${name}'
	docker compose --profile tools run create_migration ${name}
	
.PHONY: db/migrations/up
db/migrations/up:
	@echo '⬆️ Running up migrations'
	docker compose --profile tools run migrate up

.PHONY: db/migrations/down
db/migrations/down:
	@echo '⬇️ Running down migrations'
	docker compose --profile tools run migrate down
