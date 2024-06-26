# Simple Hello World Web Application in Go

Demonstrates a simple web application in Go that returns a "Hello, World!" message.

## Build Docker Image

```bash
docker build -t simple-hello-word-web-app-in-go .
```

## Run Docker Container

```bash
docker run -p 8080:8080 --name shwwaig simple-hello-word-web-app-in-go
```

## Access Web Application

Open a web browser and navigate to `http://localhost:8080/` to see the "Hello, World!" message.

or

```bash
curl http://localhost:8080/
```
