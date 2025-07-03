FROM alpine:latest

ADD https://fontawesome.com/v4/assets/font-awesome-4.7.0.zip
RUN cp fonts/FontAwesome.otf /usr/share/fonts/font-awesome && fc-cache -vf
RUN apk add texlive-full biber \
  font-awesome-free font-opensans \
  go-task && \
  ln -s /usr/bin/go-task /usr/bin/task
