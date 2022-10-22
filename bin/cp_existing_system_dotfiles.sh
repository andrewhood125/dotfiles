#!/usr/bin/env bash

find dots -type f -exec basename {} \; | xargs -t -o -I {} cp -i ~/{} dots/
