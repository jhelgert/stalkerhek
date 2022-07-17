FROM golang:alpine

WORKDIR /app

COPY cmd/ /app/cmd/
COPY hls/ /app/hls
COPY proxy /app/proxy
COPY stalker /app/stalker
COPY go.mod go.sum /app/
COPY stalkerhek.example.yml /app/stalkerhek.yml

# Compile
RUN go build -ldflags="-s -w" -o "stalkerhek" ./cmd/stalkerhek/main.go

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod 755 /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
CMD [ "./stalkerhek", "--config", "stalkerhek.yml" ]