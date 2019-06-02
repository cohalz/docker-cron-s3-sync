FROM alpine:latest

RUN apk --update add \
    python \
    curl \
    groff

RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install awscli

COPY s3-sync.sh /usr/local/bin
COPY crontab /var/spool/cron/crontabs/root
RUN chmod 644 /usr/local/bin/s3-sync.sh

CMD ["crond", "-f", "-d", "8"]
