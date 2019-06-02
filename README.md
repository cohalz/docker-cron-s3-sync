# docker-cron-s3-sync
a docker s3 sync cron sidecar container

## Usage

```bash
docker run --init --rm --name cron-s3-sync \
  -e "AWS_ACCESS_KEY_ID=xxxxxxxxxx" \
  -e "AWS_SECRET_ACCESS_KEY=xxxxxxxxxx" \
  -e "S3_BUCKET=YOURBUCKET" \
  -e "DEST_DIR=/tmp/dir/" \
  cohalz/cron-s3-sync:latest
```
