FROM golang:alpine AS builder
EXPOSE 8081
RUN mkdir /history
WORKDIR /history
COPY ./history.go .
RUN go mod init history.com/try-history
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build $(ls -1 *.go)
CMD ["go", "run", "."]
