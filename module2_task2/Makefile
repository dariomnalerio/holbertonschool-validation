lint: ## Checks code for linting error
	@golangci-lint run

build: lint ## Compile the source code of the application
	@hugo
	@go build -o awesome-api

run: ## Run the application in the background
	@nohup ./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: stop ## Stop the application and delete binary and log files
	@rm -rf awesome-api awesome-api.log

test: ## Test the application by sending HTTP requests
	@curl http://localhost:9999
	@curl http://localhost:9999/health

unit-tests: ## Execute unit tests
	@go test -v -short -coverprofile=coverage-units.out

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)
