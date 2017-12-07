#!/bin/sh

# configuration script for the development environment

echo -n Please type RPCPASS to use:
read -s PASSWORD

oc process -f template.json \
  -p OPENSHIFT_NAMESPACE=pitc-lightning-beta \
  -p RPCUSER=lightning \
  -p RPCPASS="$PASSWORD" \
  | oc create -f -
