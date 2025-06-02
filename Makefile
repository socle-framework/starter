WEB_BINARY_NAME=web
API_BINARY_NAME=api
CRYPTO_ALGORITM=rsa

build_web:
	@echo "Building Web..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${WEB_BINARY_NAME} .
	@echo "WEB built!"

build_api:
	@echo "Building Api..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${API_BINARY_NAME} ./cmd/api
	@echo "API built!"

build_cli:
	@echo "Building Cli..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app-cli ./cmd/cli
	@echo "CLI built!"

build: build_web build_api build_cli

run_web: build_web
	@echo "Starting WEB..."
	@./bin/${WEB_BINARY_NAME} &
	@echo "WEB started!"

run_api: build_api
	@echo "Starting API..."
	@./bin/${API_BINARY_NAME} &
	@echo "API started!"

run: run_web run_api


start_web:
	@echo "Starting WEB..."
	@./bin/${WEB_BINARY_NAME} &
	@echo "WEB started!"

start_api:
	@echo "Starting API..."
	@./bin/${API_BINARY_NAME} &
	@echo "API started!"

start: start_web start_api


stop_web:
	@echo "Stopping WEB..."
	@-pkill -SIGTERM -f "./bin/${WEB_BINARY_NAME}"
	@echo "Stopped WEB!"

stop_api:
	@echo "Stopping API..."
	@-pkill -SIGTERM -f "./bin/${API_BINARY_NAME}"
	@echo "Stopped API!"

stop: stop_web stop_api

restart_web: stop_web start_web

restart_api: stop_api start_api

restart: restart_web restart_api

dev_mode_restart_web: templ stop_web run_web

dev_mode_restart_api: stop_api run_api

dev_mode_restart: dev_mode_restart_web dev_mode_restart_api

clean:
	@echo "Cleaning..."
	@go clean
	@rm bin/${WEB_BINARY_NAME}
	@rm bin/${API_BINARY_NAME}
	@echo "Cleaned!"

test:
	@echo "Testing..."
	@go test ./...
	@echo "Done!" 

sqlc:
	sqlc generate

templ:
	templ generate
	
 db_schema:
	dbml2sql --postgres -o cmd/migrate/doc/schema.sql cmd/migrate/doc/schema.dbml

ca:
	bin/crypto create  --algo=ed25519 ca

cert:
	bin/crypto --algo=ed25519 create cert \
		--name $(name) \
		--ca-key ca.key \
		--ca-cert ca.crt \
		--cert-out $(out).crt \
		--key-out $(out).key