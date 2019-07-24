# test build
build:
	go build src/main/main.go -o bin/main.go
docker: build
	docker build -t test image/test
test: docker
	docker run -ti --rm test /usr/local/bin/test/main.go