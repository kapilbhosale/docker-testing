#!/bin/bash
set -e
# Remove potential running server
rm -f /myapp/tmp/pids/server.pid

bundle install --jobs 20 --retry 5
# exec servers main process
exec "$@"