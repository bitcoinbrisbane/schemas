#!/bin/bash
aws s3 sync schemas s3://schemas.testnet.verida.io --content-type application/schema+json --profile verida-testnet --delete
aws cloudfront create-invalidation --profile verida-testnet --distribution-id E2DU6UUUVFKZWK --paths "/*"
