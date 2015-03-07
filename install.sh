#!/usr/bin/env bash

establish || echo "Establish wasn't found, make sure you have all the dependencies in depends.sh installed!"


for i in `ls dots`; do
  cp -i dots/$i ~/.$i
done

chsh -s /bin/zsh
