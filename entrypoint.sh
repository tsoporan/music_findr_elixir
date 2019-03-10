#!/bin/bash

set -e

# Wait for postgres
while ! pg_isready -q -h $PG_HOST -p $PG_PORT -U $PG_USER
do
  echo "$(date) - waiting for database to start"
    sleep 2
done

# Install asset deps
cd assets && npm install && cd ..

# Install deps
mix deps.get

# Migrate
mix ecto.create
mix ecto.migrate

# Start serving
mix phx.server
