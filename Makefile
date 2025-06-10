WEB_BINARY_NAME=web
API_BINARY_NAME=api
RPC_BINARY_NAME=rpc
CLI_BINARY_NAME=cli
WORKER_BINARY_NAME=worker
CRYPTO_ALGORITM=rsa

build_web:
	@echo "Building Web..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${WEB_BINARY_NAME} ./cmd/web
	@echo "WEB built!"

build_api:
	@echo "Building Api..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${API_BINARY_NAME} ./cmd/api
	@echo "API built!"

build_rpc:
	@echo "Building RPC..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${RPC_BINARY_NAME} ./cmd/rpc
	@echo "RPC built!"

build_cli:
	@echo "Building Cli..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${CLI_BINARY_NAME} ./cmd/cli
	@echo "CLI built!"

build_worker:
	@echo "Building Worker..."
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/${WORKER_BINARY_NAME} ./cmd/worker
	@echo "CLI built!"

build: build_web build_api build_cli build_worker

run_web: build_web
	@echo "Starting WEB..."
	@./bin/${WEB_BINARY_NAME} &
	@echo "WEB started!"

run_api: build_api
	@echo "Starting API..."
	@./bin/${API_BINARY_NAME} &
	@echo "API started!"

run_rpc: build_rpc
	@echo "Starting RPC..."
	@./bin/${RPC_BINARY_NAME} &
	@echo "RPC started!"

run_worker: build_worker
	@echo "Starting WORKER..."
	@./bin/${WORKER_BINARY_NAME} &
	@echo "WORKER started!"

run: run_web run_api run_rpc run_worker


start_web:
	@echo "Starting WEB..."
	@./bin/${WEB_BINARY_NAME} &
	@echo "WEB started!"

start_api:
	@echo "Starting API..."
	@./bin/${API_BINARY_NAME} &
	@echo "API started!"

start_rpc:
	@echo "Starting RPC..."
	@./bin/${RPC_BINARY_NAME} &
	@echo "RPC started!"

start_worker:
	@echo "Starting WORKER..."
	@./bin/${WORKER_BINARY_NAME} &
	@echo "WORKER started!"

start: start_web start_api start_rpc start_worker


stop_web:
	@echo "Stopping WEB..."
	@-pkill -SIGTERM -f "./bin/${WEB_BINARY_NAME}"
	@echo "Stopped WEB!"

stop_api:
	@echo "Stopping API..."
	@-pkill -SIGTERM -f "./bin/${API_BINARY_NAME}"
	@echo "Stopped API!"

stop_rpc:
	@echo "Stopping RPC..."
	@-pkill -SIGTERM -f "./bin/${RPC_BINARY_NAME}"
	@echo "Stopped RPC!"

stop_worker:
	@echo "Stopping WORKER..."
	@-pkill -SIGTERM -f "./bin/${WORKER_BINARY_NAME}"
	@echo "Stopped WORKER!"

stop: stop_web stop_api stop_rpc stop_worker

restart_web: stop_web start_web 

restart_api: stop_api start_api

restart_worker: stop_rpc start_rpc

restart_worker: stop_worker start_worker

restart: restart_web restart_api restart_rpc restart_worker

clean:
	@echo "Cleaning..."
	@go clean
	@rm bin/${WEB_BINARY_NAME}
	@rm bin/${API_BINARY_NAME}
	@rm bin/${RPC_BINARY_NAME}
	@rm bin/${CLI_BINARY_NAME}
	@rm bin/${WORKER_BINARY_NAME}
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
	dbml2sql --postgres -o internal/store/migrate/doc/schema.sql internal/store/migrate/doc/schema.dbml

ca:
	bin/crypto create  --algo=$(algo) ca

cert:
	bin/crypto --algo=$(algo) create cert \
		--name $(name) \
		--ca-key ca.key \
		--ca-cert ca.crt \
		--cert-out $(out).crt \
		--key-out $(out).key


dev_mode_restart_web: templ stop_web run_web

dev_mode_restart_api: stop_api run_api

dev_mode_restart_rpc: stop_rpc run_rpc

dev_mode_restart_worker: stop_worker run_worker

dev_mode_restart: dev_mode_restart_web dev_mode_restart_api dev_mode_restart_rpc dev_mode_restart_worker