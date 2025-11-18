#!/usr/bin/env bash

set -euo pipefail
shopt -s nullglob

SSH_DIR="${HOME}/.ssh"
FOUND=0

echo "Paste the fingerprint string for the public key (e.g. SHA256:9HHfnThJk7y2ZtB8xSypTTa5bLPDc2RWx4NdP4uact4)."
read -r -p "Public key fingerprint: " PUB_FP

if [[ -z "${PUB_FP}" ]]; then
  echo "✖ No fingerprint provided."
  exit 1
fi

while IFS= read -r -d '' KEY; do
  if [[ "$KEY" == *.pub ]]; then
    continue
  fi

  if ! ssh-keygen -lf "$KEY" >/dev/null 2>&1; then
    continue
  fi

  PRIV_FP=$(ssh-keygen -lf "$KEY" | awk '{print $2}')

  if [[ "$PUB_FP" == "$PRIV_FP" ]]; then
    echo "✔ Match found!"
    echo "Private key: $KEY"
    FOUND=1
    break
  fi
done < <(find "$SSH_DIR" -type f -print0)

if [[ "$FOUND" -eq 0 ]]; then
  echo "No matching private key found inside ${SSH_DIR}."
fi