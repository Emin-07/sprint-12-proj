FROM golang:1.26

WORKDIR /usr/scr/app

COPY go.mod go.sum .

RUN go mod download

COPY . .

RUN go build -o binApp

CMD ["./binApp"]