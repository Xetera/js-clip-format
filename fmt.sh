#!/usr/bin/env bash

result=$(xclip -o | prettier --stdin --parser=typescript --loglevel=silent)

if [[ -z "$result" ]]; then
    exit 1
fi

echo "$result" | xclip -i -selection clipboard