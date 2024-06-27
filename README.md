# Simple Hello World Web Application in Go

Demonstrates a simple web application in Go that returns a "Hello, World!" message.

[TOC]

## Build Docker Image

```bash
docker build -t simple-hello-word-web-app-in-go .
```

## Run Docker Container

### Run Docker Container in the Foreground from local image

```bash
docker run -p 8080:8080 --name shwwaig simple-hello-word-web-app-in-go
```

### Run Docker Container in the Background from public/private repository image

```bash
docker run -p 8080:8080 --name shwwaig registry.dc5.eu/public/simple-hello-word-web-app-in-go@sha256:d2ee8ef650588fa18d00705ede568f9506d7aa4ffb5fb1cb012fc0739810187c &
```

## Access Web Application

Open a web browser and navigate to `http://localhost:8080/` to see the "Hello, World!" message.

or

```bash
curl http://localhost:8080/
```

## Push to private Docker Registry

Tag an image for this project

```bash
docker tag simple-hello-word-web-app-in-go registry.dc5.eu/public/simple-hello-word-web-app-in-go:20240626
```

Login to the registry

```bash
docker login registry.dc5.eu
```

Push an image to this project

```bash
docker push registry.dc5.eu/public/simple-hello-word-web-app-in-go:20240626
```

## Pull from private Docker Registry

```bash
docker pull registry.dc5.eu/public/simple-hello-word-web-app-in-go@sha256:d2ee8ef650588fa18d00705ede568f9506d7aa4ffb5fb1cb012fc0739810187c
```
