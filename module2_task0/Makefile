build: ## Compile the source code of the application
	@go build -o awesome-api

run: ## Run the application in the background
	@nohup ./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: ## Stop the application and delete binary and log files
	@pkill awesome-api
	@rm -rf awesome-api awesome-api.log

test: ## Test the application by sending HTTP requests
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)
