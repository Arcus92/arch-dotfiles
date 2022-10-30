#!/bin/bash

for f in ./install/applications/*.sh; do
  bash "$f" || break
done
