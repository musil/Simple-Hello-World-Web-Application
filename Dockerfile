# Base Image
FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go.* and *.go from the current directory to the PWD(Present Working Directory) inside the container
COPY go.* .
COPY *.go .

# Download all the dependencies (This will create a go.mod and go.sum file)
RUN go mod init simple-hello-world-web-app/m/v2
RUN go mod tidy
RUN go mod download

# Build the Go app (Go build creates an executable file named main)
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]