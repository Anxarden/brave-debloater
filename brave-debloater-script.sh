#!/bin/bash

debloat_brave() {
  echo "Creating required directory..."
  mkdir -p /etc/brave/policies/managed/

  echo "Placing the debloat policies in place..."
  curl -sfL https://raw.githubusercontent.com/Anxarden/brave-debloater/refs/heads/main/policies.json >/etc/brave/policies/managed/policies.json

  echo "Closing Brave..."
  killall brave 2>/dev/null

  echo "Restarting Brave..."
  brave &

  echo "Done!"
}

if [ "$EUID" -eq 0 ]; then
  debloat_brave
else
  echo "Requires sudo access for the /etc/brave/ directory."
  echo "Try: curl <link> | sudo sh - "
fi
