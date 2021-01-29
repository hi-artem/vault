#!/bin/bash 

set -e 

cat << EOF
disable_mlock = true

storage "postgresql" {
  connection_url = "${DATABASE_URL:?}"
}

listener "tcp" {
 address = "127.0.0.1:${PORT:?}"
 proxy_protocol_behavior = "use_always"
 tls_disable = 1
}

ui = true
EOF


