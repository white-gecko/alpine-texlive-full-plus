FROM alpine:latest

ADD https://github.com/FortAwesome/Font-Awesome.git#v4.7.0:fonts /tmp/FontAwesome/
RUN mkdir -p /usr/share/fonts/font-awesome && \
  cp /tmp/FontAwesome/FontAwesome.otf /usr/share/fonts/font-awesome
RUN apk add texlive-full biber \
  font-awesome-free font-opensans \
  go-task && \
  fc-cache -vf && \
  ln -s /usr/bin/go-task /usr/bin/task
