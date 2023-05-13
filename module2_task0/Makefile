build:
	@hugo
	@go build -o awesome-api

run:
	@nohup ./awesome-api >./awesome-api.log 2>&1 &

stop:
	@pkill awesome-api

clean:
	@pkill awesome-api
	@rm -rf awesome-api awesome-api.log



test:
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help:
	@echo "help: Print a list of all the goals with a sentence each"
	@echo "build: Compile the source code of the application"
	@echo "run: Run the application in the background"
	@echo "stop: Stop the application"
	@echo "clean: Stop the application and delete binary and log files"
	@echo "test: Test the application by sending HTTP requests"