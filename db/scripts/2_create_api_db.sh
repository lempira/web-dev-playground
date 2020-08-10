#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username postgres"

# create database for superset
echo "Creating database: api"
$POSTGRES <<EOSQL
CREATE DATABASE $POSTGRES_API_NAME OWNER $POSTGRES_API_USER;
EOSQL
