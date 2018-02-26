FROM docker:18.02.0

ENV DOCKER_HOST tcp://localhost:9999

WORKDIR /
COPY . /

RUN apk update && \
  apk add --no-cache \
  wget \
  openssh \
  vim \
  make

RUN echo StrictHostKeyChecking no > /etc/ssh/ssh_config
RUN chmod -R +x /scripts

ENTRYPOINT ["make", "add_key", "start_proxy", "deploy_production"]
