#!/bin/bash

S3_BUCKET="${1}"
S3_PATH="s3://${S3_BUCKET}"

s3cmd mb ${S3_PATH}

S3_RETURN_CODE=$?

if [ ${S3_RETURN_CODE} -eq 0 ]; then
  echo "Bucket created"
else
  echo "Could not create bucket"
  exit 1
fi
