#!/usr/bin/env bash

PATCH_FILE=maas-vmware-fusion.patch

for f in `find src -type f`; do
  diff -Naur ../maas/${f} ${f}
  done | sed -e 's| .*src/| |;s/from src./from /' > ${PATCH_FILE}

