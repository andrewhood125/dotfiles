#!/usr/bin/env bash

find ~ -type f -depth 1 -ok cp {} dots/ \;
