FROM alpine:latest

RUN apk add texlive-full biber \
  font-awesome font-opensans \
  go-task && \
  ln -s /usr/bin/go-task /usr/bin/task
