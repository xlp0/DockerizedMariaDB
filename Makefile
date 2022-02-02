test: 
	docker buildx build --platform linux/amd64,linux/arm64 -t xlp0/mariadb .

build: 
	docker buildx build -t xlp0/mariadb .

buildAndPush: 
	docker buildx build --platform linux/amd64,linux/arm64 -t xlp0/mariadb . --push

push:
	docker push xlp0/mariadb

buildTest:
	docker buildx build -t xlp0/mariadbtest .

pushTest:
	docker push xlp0/mariadbtest
