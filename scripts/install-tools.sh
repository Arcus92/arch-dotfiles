#!/bin/bash

for f in ./install/tools/*.sh; do
  bash "$f" || break
done
