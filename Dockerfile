# Container image that runs your code
FROM debian:11-slim

RUN apt update && sudo apt install -y build-essential apt-transport-https ca-certificates curl

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["sleep", "60000"]