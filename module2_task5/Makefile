lint: ## Checks code for linting error
	@golangci-lint run

build: lint check ## Compile the source code of the application
	@hugo
	@go build -o awesome-api

run: ## Run the application in the background
	@nohup ./awesome-api >./awesome-api.log 2>&1 &

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@echo "---\
	title: '$(POST_TITLE)'\
	date: $(date +"%Y-%m-%dT%H:%M:%S%z")\
	---" > content/posts/$(POST_NAME).md

stop: ## Stop the application
	@pkill awesome-api

clean: ##  Delete binary and log files
		@rm -rf dist
		@rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out
		@pkill awesome-api

unit-tests: ## Execute unit tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Execute integration tests
	@go test -v -coverprofile=coverage-integrations.out

test: unit-tests integration-tests validate ## Execute all tests

check: ## Fails if markdownlint or markdown-link fail
	@markdownlint ./content/posts/*
	@markdown-link-check ./content/posts/*

validate: ## Prints validator result
	@./W3C-Validator/w3c_validator.py ./dist/index.html || true

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)
