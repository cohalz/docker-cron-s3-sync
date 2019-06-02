FROM alpine:latest

RUN apk add --no-cache python && \
    wget -O - https://bootstrap.pypa.io/get-pip.py | python && \
    pip install awscli

COPY s3-sync.sh /usr/local/bin
COPY crontab /var/spool/cron/crontabs/root

CMD ["crond", "-f", "-d", "8"]
