#!/usr/bin/env bash

set -e

mkdir -p /opt/elastos/wallet

if test $# -eq 0; then
  # node
  /opt/ela &
  # wallet api
  cp -f Elastos.ELA.Utilities.Java.jar java-config.json elastos/wallet
  cd elastos/wallet
  exec java -cp Elastos.ELA.Utilities.Java.jar org.elastos.elaweb.HttpServer
else
  exec $@
fi
