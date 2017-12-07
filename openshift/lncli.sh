#!/bin/bash

POD=$(oc get pods | grep lnd | grep -v build | grep Running | awk '{print $1}')

oc exec $POD -- lncli $@
