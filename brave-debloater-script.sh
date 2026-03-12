#!/bin/bash

debloat_brave() {
  echo "Creating required directory..." &&
  sudo mkdir -p /etc/brave/policies/managed/ &&

  echo "Placing the debloat policies in place..." &&
  curl -sfL https://raw.githubusercontent.com/Anxarden/brave-debloater/refs/heads/main/policies.json | sudo tee /etc/brave/policies/managed/policies.json >/dev/null &&

  echo "Closing Brave..." &&
  killall brave 2>/dev/null

  echo "Restarting Brave..."
  brave &

  echo "Done!"
}

debloat_brave
