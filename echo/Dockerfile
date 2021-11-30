FROM golang:alpine AS builder
ENV GO111MODULE=on
EXPOSE 5432
RUN mkdir /echo
WORKDIR /echo
COPY ./echo.go .
RUN go get github.com/labstack/echo/v4
RUN go mod init example.com/try-echo
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build $(ls -1 *.go)
CMD ["go", "run", "."]
