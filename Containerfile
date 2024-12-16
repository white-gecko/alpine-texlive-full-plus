FROM alpine:latest

RUN apk add texlive-full biber go-task && \
  ln -s /usr/bin/go-task /usr/bin/task
