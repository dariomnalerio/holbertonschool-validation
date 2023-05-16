lint: ## Checks code for linting error
	@golangci-lint run

build: lint ## Compile the source code of the application
	@hugo
	@go build -o awesome-api

run: ## Run the application in the background
	@nohup ./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: ##  Delete binary and log files
		@rm -rf dist
		@rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out

unit-tests: ## Execute unit tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Execute integration tests
	@go test -v -coverprofile=coverage-integrations.out

test: unit-tests integration-tests ## Execute all tests

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)
