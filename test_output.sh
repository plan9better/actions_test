#!/usr/bin/env bash
output=$(diff <(result/bin/hello.out) <(echo "HelloOCaml!"))

if [[ -z "$output" ]]; then
  echo "Command has no output"
else
  echo "Command has output"
  exit 1
fi


