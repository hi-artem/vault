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

ui = true
EOF


