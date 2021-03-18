FROM alpine

RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

# frps的版本
ENV FRP_VERSION 0.36.1

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz 
RUN tar -xf frp_${FRP_VERSION}_linux_amd64.tar.gz 
RUN mkdir /frps 
RUN cp frp_${FRP_VERSION}_linux_amd64/frps* /frps/ 
RUN rm -rf frp_${FRP_VERSION}_linux_amd64*

# Clean APK cache
RUN rm -rf /var/cache/apk/*

VOLUME /conf
WORKDIR /frps
ENTRYPOINT ["./frps","-c","/conf/frps.ini"]

