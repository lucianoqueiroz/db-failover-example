#!/bin/bash

docker run --rm --network=db-failover-example_default --dns=172.20.0.2 jbergknoff/postgresql-client postgresql://postgres@master.postgres.com:5432/postgres -c "select application_name from pg_stat_activity where wait_event = 'ClientRead';"
