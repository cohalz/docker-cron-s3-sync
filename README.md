# cron-s3-sync
This runs `s3 sync --exact-timestamps --delete` every minute

## Docker Hub
- https://hub.docker.com/r/cohalz/cron-s3-sync

## Usage

```bash
docker run --init \
  -e "AWS_ACCESS_KEY_ID=xxxxxxxxxx" \
  -e "AWS_SECRET_ACCESS_KEY=xxxxxxxxxx" \
  -e "S3_BUCKET=your-bucket" \
  -e "LOCAL_DIR=/tmp/dir/" \
  -e "SYNC_TYPE=PULL" \
  cohalz/cron-s3-sync
```
