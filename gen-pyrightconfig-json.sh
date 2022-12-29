#!/usr/bin/env bash

cat <<EOF > pyrightconfig.json
{
  "extraPaths": [
    "$(pwd)/from-container/usr/local/lib/python3.10/site-packages"
  ]
}
EOF
