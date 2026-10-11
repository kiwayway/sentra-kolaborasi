#!/usr/bin/env bash
set -euo pipefail
INTERVAL="${1:-10}"
if ! [[ "$INTERVAL" =~ ^[0-9]+$ ]] || [ "$INTERVAL" -lt 1 ]; then
 echo "Interval harus berupa bilangan bulat positif" >&2
 exit 1
fi
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
while true; do
 date '+%F %T'
 sleep "$INTERVAL"
done
