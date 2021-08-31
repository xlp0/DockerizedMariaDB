# DockerizedMariaDB
A docker image created for MariaDB

We must run the image using docker-compose.yml to add the automysqlbackup scrip at least once.

The xlp0/mariadb_auto image requires some manual actions to complete the docker image construction process.
1. Perform make test (run docker build -t xlp0/mariadb_auto .), note that the Dockerfile in this directory copies a debian.cnf file to the docker image.
2. Use the docker-compose.yml (docker-compose up -d) file in this directory, to temporarily launch this docker image for addition actions.
3. Then, (docker exec -it dockerizedmariadb_database_1 bash) to get into the Command Line Interactive (CLI) mode
4. Run (apt install -y automysqlbackup), and answer two questions. First one choose (5) for local only, and (example.org) for system email address
5. After the installation process completes, type (exit) to get out of the docker CLI mode.
6. Use (docker ps -a) to identify the "Container ID" of the "dockerizedmariadb_database_1" image
7. Use the "Container ID" to perform the following task: (docker commit "Container ID" xlp0/mariadb_auto)
8. Then, push this image to Dockerhub.io by the following command: (docker push xlp0/mariadb_auto)

