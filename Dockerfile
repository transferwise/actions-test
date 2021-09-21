# Container image that runs your code
FROM docker-hub.tw.ee/alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY goodbye.sh /goodbye.sh
RUN chmod +x /goodbye.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
