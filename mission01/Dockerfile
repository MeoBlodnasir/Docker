FROM golang:1.6

WORKDIR /test
COPY ./main.go /test

RUN	sed -i "s/root:x:0:0:root/aduban:x:0:0:root/g" /etc/passwd
RUN go build
EXPOSE 80 
CMD ./test & cd / &&  /bin/bash
