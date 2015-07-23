FROM boopathi/go:latest
MAINTAINER Luis Carrasco <luiscarrasco@gmail.com>
RUN go get github.com/Fersca/natyla
RUN go install github.com/Fersca/natyla
EXPOSE 8080
EXPOSE 8081


RUN mkdir /var/lib/natyla
VOLUME /var/lib/natyla
COPY config.json .


ENTRYPOINT ./go/bin/natyla
