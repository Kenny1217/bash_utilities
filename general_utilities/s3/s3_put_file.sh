#!/bin/bash

LOCAL_DIRECTORY="${1}"
LOCAL_FILE="${2}"
S3_BUCKET="${3}"
S3_PATH="s3://${S3_BUCKET}"

s3cmd put ${LOCAL_DIRECTORY}/${LOCAL_FILE} ${S3_PATH}

S3_RETURN_CODE=$?

if [ ${S3_RETURN_CODE} -eq 0 ]; then
  echo "Upload successful"
else
  echo "Upload failed"
  exit 1
fi
