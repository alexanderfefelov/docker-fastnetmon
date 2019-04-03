#!/usr/bin/env bash

echo $@

while read line
do
  echo $line
done < /dev/stdin
