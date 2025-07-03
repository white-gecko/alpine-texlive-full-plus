FROM alpine:latest

ADD https://github.com/FortAwesome/Font-Awesome/archive/refs/tags/v4.7.0.tar.gz /tmp/FontAwesome
RUN cp /tmp/FontAwesome/fonts/FontAwesome.otf /usr/share/fonts/font-awesome && fc-cache -vf
RUN apk add texlive-full biber \
  font-awesome-free font-opensans \
  go-task && \
  ln -s /usr/bin/go-task /usr/bin/task
