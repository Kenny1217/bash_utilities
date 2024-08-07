#!/bin/bash

S3_BUCKET="${1}"
S3_FILE="${2}"
S3_PATH="s3://${S3_BUCKET}/${S3_FILE}"
LOCAL_DIRECTORY="${3}"

s3cmd get "${S3_PATH}" "${LOCAL_DIRECTORY}"

S3_RETURN_CODE=$?

if [ ${S3_RETURN_CODE} -eq 0 ]; then
  echo "Download successful"
else
  echo "Download failed"
  exit 1
fi
