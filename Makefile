test: 
	docker buildx build -t xlp0/mariadb_auto .

build: 
	docker buildx build -t xlp0/mariadb .

push:
	docker push xlp0/mariadb

buildTest:
	docker buildx build -t xlp0/mariadbtest .

pushTest:
	docker push xlp0/mariadbtest
