#!/bin/sh

if [ "${SYNC_TYPE}" = "PULL" ]; then
   aws s3 sync --exact-timestamps --delete s3://"${S3_BUCKET}"/ "${LOCAL_DIR}"
elif [ "${SYNC_TYPE}" = "PUSH" ]; then
   aws s3 sync --exact-timestamps --delete "${LOCAL_DIR}" s3://"${S3_BUCKET}"/
fi
