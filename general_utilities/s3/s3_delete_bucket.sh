#!/bin/bash

S3_BUCKET="${1}"
S3_PATH="s3://${S3_BUCKET}"

s3cmd rb ${S3_PATH}

S3_RETURN_CODE=$?

if [ ${S3_RETURN_CODE} -eq 0 ]; then
  echo "Bucket deleted"
else
  echo "Could not delete bucket"
  exit 1
fi
