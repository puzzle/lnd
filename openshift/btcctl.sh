#!/bin/bash

POD=$(oc get pods | grep btcd | grep -v build | grep Running | awk '{print $1}')

oc exec $POD -- btcctl --configfile=/data/btcd.conf --testnet --rpccert=/rpc/rpc.cert --rpcuser=lightning --rpcpass=lightning --rpcserver=btcd $@
