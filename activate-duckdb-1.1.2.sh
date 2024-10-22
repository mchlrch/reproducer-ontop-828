#!/bin/sh

cd bin; rm duckdb; ln -s duckdb-1.1.2 duckdb
cd ..
cd bin/ontop/jdbc; ln -sf ../../../jdbc/duckdb_jdbc-1.1.2/duckdb_jdbc.jar duckdb_jdbc.jar
cd ../../..

ls -l bin
ls -l bin/ontop/jdbc
