FROM tombull/confd:alpine

RUN apk update && apk add curl jq

VOLUME /etc/config


COPY confd /etc/confd

CMD ["/bin/confd", "-backend", "rancher", "-prefix", "/2015-07-25"]
