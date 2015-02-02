#!/usr/bin/env bash


# assue mac
OS="mac"

# check if debian
if [ -f "/etc/debian_version" ];
then
  OS="debian"
fi

# load books
echo "Loading books..."
for i in `ls ${OS}`; do
  book="${OS}/${i}"
  echo -e "\t${book}"
  . ${book}
done


# Install deps
echo "Installing deps..."
deps=(ruby zsh vim)

for i in ${deps[@]}; do
  echo -e "\t${i}\e[34m"
  eval ${OS}_${i}
  echo -e "\e[0m"
done


# install plugins

# copy config files over
