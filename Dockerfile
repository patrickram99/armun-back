FROM golang:1.21 as builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM alpine:latest  

RUN apk --no-cache add ca-certificates

RUN apk add --no-cache bash curl

ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/wait-for-it.sh
RUN chmod +x /usr/wait-for-it.sh

WORKDIR /root/

COPY --from=builder /app/main .
COPY init.sql .
COPY drop.sql .
EXPOSE 8080

# Command to run the executable
CMD ["/usr/wait-for-it.sh", "db:3306", "--", "./main"]

