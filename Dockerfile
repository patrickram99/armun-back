# Dockerfile
# Step 1: Build the Go application
FROM golang:1.20 AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/main main.go

# Step 2: Create the final image
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/main /app/main
COPY models /app/models
EXPOSE 8080
CMD ["/app/main"]
