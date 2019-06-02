FROM python:3-alpine

RUN pip install awscli

COPY s3-sync.sh /usr/local/bin
COPY crontab /var/spool/cron/crontabs/root

CMD ["crond", "-f", "-d", "8"]
