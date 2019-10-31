FROM golang:1.12

RUN mkdir -p /go/src/github.com/Josca/gin-container
WORKDIR /go/src/github.com/Josca/gin-container

COPY . /go/src/github.com/Josca/gin-container

ENV GO111MODULE=on
RUN go mod download && go build

USER nobody

ENV GIN_MODE=release

CMD ["./gin-container"]
