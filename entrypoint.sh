#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

bin/rails assets:precompile
bin/rails db:migrate
exec "$@"