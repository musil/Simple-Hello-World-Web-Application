build:
	docker build -t simple-hello-word-web-app-in-go .

run:
	docker run -p 8080:8080 --name shwwaig simple-hello-word-web-app-in-go &

stop:
	docker stop shwwaig

clean:
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