# test build
build:
	go build -o bin/main.go src/main/main.go
docker: build
	docker build -t test . -f image/test/Dockerfile
test: docker
	docker run -ti --rm test /usr/local/bin/test/main.go