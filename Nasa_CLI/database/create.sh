#!/bin/bash
export PGPASSWORD='postgres1'
BASEDIR=$(dirname $0)
DATABASE=nasa_java
psql -U postgres -p 5433 -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres -p 5433 $DATABASE &&
psql -U postgres -p 5433 -d $DATABASE -f "$BASEDIR/nasa_db.sql"