FROM golang:1.19-alpine

WORKDIR /setup
RUN apk add --no-cache curl gettext unzip gettext aws-cli
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && chmod +x kubectl \
  && mv kubectl /bin/kubectl