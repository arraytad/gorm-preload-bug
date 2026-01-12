.PHONY: all test build lint tidy vet staticcheck

.DEFAULT_GOAL := all

all: tidy lint test build

tidy:
	go mod tidy

vet:
	go vet ./...

staticcheck:
	staticcheck ./...

lint: vet staticcheck

test:
	go test -v ./...

build:
	go build ./...
