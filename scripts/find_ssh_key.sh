#!/usr/bin/env bash


# SSH Key Fingerprint Helper

`find_ssh_key.sh` scans your local `~/.ssh` folder for a private key that
matches a public key fingerprint (such as the `SHA256:...` value shown by
GitHub or other git providers).

## Prerequisites
- macOS or Linux with `bash`
- `ssh-keygen` available in your `PATH`
- The fingerprint string for the public key you want to match, e.g.
  `SHA256:9HHfnThJk7y2ZtB8xSypTTa5bLPDc2RWx4NdP4uact4`

## Usage
1. Ensure the script is executable:
   ```bash
   chmod +x scripts/find_ssh_key.sh
   ```
2. Run the script:
   ```bash
   ./scripts/find_ssh_key.sh
   ```
3. When prompted, paste the fingerprint string (the full `SHA256:...` value).
4. The script iterates through every non-`.pub` file inside `~/.ssh`, computes
   its fingerprint, and stops at the first match.

## Output
- If a matching private key is found, the script prints:
  - `✔ Match found!`
  - `Private key: /Users/.../.ssh/id_example`
- If no match exists inside `~/.ssh`, it prints:
  - `No matching private key found inside /Users/<you>/.ssh.`

## Troubleshooting
- **No fingerprint provided** – the script exits if the prompt is left blank.
- **No match found** – confirm the desired private key actually resides in
  `~/.ssh` and that you copied the fingerprint correctly.
- **Permission denied** – run the script with the appropriate user or adjust
  file permissions inside `~/.ssh`.



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