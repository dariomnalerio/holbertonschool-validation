build: ## Build the website using Hugo
	@hugo

clean: ## Remove the dist directory
	@rm -rf dist

post: ## Create new post with a given name and title: POST_NAME=example-post POST_TITLE="Example Post"
	@hugo new posts/$(POST_NAME).md
	@echo "---\
	title: '$(POST_TITLE)'\
	date: $(date +"%Y-%m-%dT%H:%M:%S%z")\
	---" > content/posts/$(POST_NAME).md

help: ## Show help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)