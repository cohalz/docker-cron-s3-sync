FROM alpine:latest

RUN apk add --no-cache python3 && \
    wget -O - https://bootstrap.pypa.io/get-pip.py | python3 && \
    pip install awscli

COPY s3-sync.sh /
COPY crontab /var/spool/cron/crontabs/root

CMD ["sh", "-c", "/s3-sync.sh && crond -f -d 8"]
