#!/bin/bash

PUBLIC_KEY="$1"

if [ -z "$PUBLIC_KEY" ]; then
  echo "Usage: $0 <path-to-public-key>"
  exit 1
fi

PUB_FP=$(ssh-keygen -lf "$PUBLIC_KEY" | awk '{print $2}')
echo "Public key fingerprint: $PUB_FP"
echo "Searching for matching private key in ~/.ssh ..."

for KEY in ~/.ssh/id_*; do
  # Skip public keys
  if [[ "$KEY" == *.pub ]]; then
    continue
  fi

  # Skip files that are not valid private keys
  if ! ssh-keygen -lf "$KEY" >/dev/null 2>&1; then
    continue
  fi

  PRIV_FP=$(ssh-keygen -lf "$KEY" | awk '{print $2}')

  if [ "$PUB_FP" == "$PRIV_FP" ]; then
    echo "✔ Match found!"
    echo "Private key: $KEY"
    exit 0
  fi
done

echo "❌ No matching private key found."
exit 1