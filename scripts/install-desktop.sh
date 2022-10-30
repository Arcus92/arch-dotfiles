#!/bin/bash

for f in ./install/desktop/*.sh; do
  bash "$f" || break
done