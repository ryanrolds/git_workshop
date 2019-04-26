FROM golang:1.12-alpine3.9

RUN apk add --update make git ca-certificates

COPY . /git_workshop
WORKDIR /git_workshop

RUN make
RUN go build

EXPOSE 8080
CMD ["./git_workshop"]
