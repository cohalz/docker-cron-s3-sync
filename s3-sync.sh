#!/bin/sh

aws s3 sync --exact-timestamps --delete s3://"${S3_BUCKET}"/ "${DEST_DIR}"
