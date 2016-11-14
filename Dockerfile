FROM golang:1.7.3

EXPOSE 9090

ENV TIME_ZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone

COPY . /go/src/github.com/yiyiyaya/go_web

WORKDIR /go/src/github.com/yiyiyaya/go_web

RUN go build

CMD ["sh", "-c", "./go_web"]
