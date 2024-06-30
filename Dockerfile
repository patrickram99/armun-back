# Start from the official Go image to create a build artifact.
FROM golang:1.21 as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Start a new stage from scratch for a smaller, final image
FROM alpine:latest  

RUN apk --no-cache add ca-certificates

# Install bash and network tools
RUN apk add --no-cache bash curl

# Download wait-for-it.sh script
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/wait-for-it.sh
RUN chmod +x /usr/wait-for-it.sh

WORKDIR /root/

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/main .

# Copy other necessary files like init.sql
COPY init.sql .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["/usr/wait-for-it.sh", "db:3306", "--", "./main"]

