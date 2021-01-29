#!/bin/bash 

set -e 

cat << EOF
disable_mlock = true

storage "postgresql" {
  connection_url = "${DATABASE_URL:?}"
}

listener "tcp" {
 address = "127.0.0.1:${PORT:?}"
 tls_disable = 1
}

api_addr = "https://testvault.heroku.app"

ui = true
EOF


