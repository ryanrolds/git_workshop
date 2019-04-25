FROM golang:1.12-alpine3.9

RUN apk add --update make git ca-certificates

COPY . /app
WORKDIR /app

RUN go build

EXPOSE 8080
CMD ["./starting_project_workshop"]
