FROM alpine:3.13.4
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG ALERTMANAGER_VERSION=0.21.0

WORKDIR /alertmanager

RUN apk add --no-cache ca-certificates &&\
    wget -P /tmp/ https://github.com/prometheus/alertmanager/releases/download/v${ALERTMANAGER_VERSION}/alertmanager-${ALERTMANAGER_VERSION}.linux-amd64.tar.gz &&\
    tar -xvzf /tmp/alertmanager-${ALERTMANAGER_VERSION}.linux-amd64.tar.gz --strip-components=1 -C /tmp &&\
    cp /tmp/alertmanager /bin &&\
    cp /tmp/amtool /bin &&\
    rm -rf /var/cache/apk/* /tmp/*

ADD data/ /
RUN chmod +x /entrypoint.sh

EXPOSE 9093

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/alertmanager", "--config.file=/etc/alertmanager/alertmanager.yml", "--storage.path=/alertmanager"]
