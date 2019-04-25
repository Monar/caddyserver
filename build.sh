#!/usr/bin/env bash

export GO111MODULE=on
go mod init caddy
go get -u github.com/mholt/caddy
go get -u github.com/russross/blackfriday@master
GOOS=darwin go build -o dist/caddy-darwin
GOOS=linux go build -o dist/caddy-linux
