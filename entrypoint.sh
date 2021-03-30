#!/bin/bash
set -e
# Remove potential running server
rm -f /myapp/tmp/pids/server.pid

# exec servers main process
exec "$@"