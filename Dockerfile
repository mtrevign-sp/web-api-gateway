FROM golang

ADD . /go/src/github.com/mtrevign-sp/web-api-gateway

RUN go get github.com/mtrevign-sp/web-api-gateway/server
RUN go install github.com/mtrevign-sp/web-api-gateway/server
RUN go install github.com/mtrevign-sp/web-api-gateway/setuptool
RUN go install github.com/mtrevign-sp/web-api-gateway/connectiontest

ENTRYPOINT ["/go/bin/server"]

EXPOSE 443
