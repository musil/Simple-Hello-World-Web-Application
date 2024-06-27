build:
	docker build -t simple-hello-word-web-app-in-go .

run-local:
	docker run -p 8080:8080 --name shwwaig simple-hello-word-web-app-in-go &

run:
	docker run -p 8080:8080 --name shwwaig registry.dc5.eu/public/simple-hello-word-web-app-in-go@sha256:d2ee8ef650588fa18d00705ede568f9506d7aa4ffb5fb1cb012fc0739810187c &

scout:
	docker scout quickview registry.dc5.eu/public/simple-hello-word-web-app-in-go@sha256:d2ee8ef650588fa18d00705ede568f9506d7aa4ffb5fb1cb012fc0739810187c

stop:
	docker stop shwwaig

remove:
	docker rm shwwaig

logs:
	docker logs shwwaig

start:
	docker start shwwaig

test:
	curl http://localhost:8080

restart:
	make stop
	make start