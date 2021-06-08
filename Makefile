build: 
	docker build -t xlp0/mariadb .

push:
	docker push xlp0/mariadb

buildTest:
	docker build -t xlp0/mariadbtest .

pushTest:
	docker push xlp0/mariadbtest
