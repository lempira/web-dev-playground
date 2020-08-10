#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a shared role to read & write general datasets into postgres
echo "Creating database role: $POSTGRES_API_USER"
$POSTGRES <<-EOSQL
CREATE USER $POSTGRES_API_USER WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$POSTGRES_API_PASSWORD';
EOSQL
