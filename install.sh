#!/bin/sh

DUCKDB_100_ZIPFILE_URL="https://github.com/duckdb/duckdb/releases/download/v1.0.0/duckdb_cli-linux-amd64.zip"
DUCKDB_112_ZIPFILE_URL="https://github.com/duckdb/duckdb/releases/download/v1.1.2/duckdb_cli-linux-amd64.zip"

DUCKDB_JDBC_100_JARFILE_URL="https://repo1.maven.org/maven2/org/duckdb/duckdb_jdbc/1.0.0/duckdb_jdbc-1.0.0.jar"
DUCKDB_JDBC_112_JARFILE_URL="https://repo1.maven.org/maven2/org/duckdb/duckdb_jdbc/1.1.2/duckdb_jdbc-1.1.2.jar"

ONTOP_ZIPFILE_URL="https://github.com/ontop/ontop/releases/download/ontop-5.2.0/ontop-cli-5.2.0.zip"

mkdir -p bin/duckdb-1.0.0
curl -L $DUCKDB_100_ZIPFILE_URL -o duckdb_cli.zip
unzip duckdb_cli.zip -d bin/duckdb-1.0.0
rm duckdb_cli.zip

mkdir -p bin/duckdb-1.1.2
curl -L $DUCKDB_112_ZIPFILE_URL -o duckdb_cli.zip
unzip duckdb_cli.zip -d bin/duckdb-1.1.2
rm duckdb_cli.zip

mkdir -p jdbc/duckdb_jdbc-1.0.0
curl -L $DUCKDB_JDBC_100_JARFILE_URL -o duckdb_jdbc.jar
mv duckdb_jdbc.jar jdbc/duckdb_jdbc-1.0.0/
rm duckdb_jdbc.jar

mkdir -p jdbc/duckdb_jdbc-1.1.2
curl -L $DUCKDB_JDBC_112_JARFILE_URL -o duckdb_jdbc.jar
mv duckdb_jdbc.jar jdbc/duckdb_jdbc-1.1.2/
rm duckdb_jdbc.jar

mkdir -p bin/ontop
curl -L $ONTOP_ZIPFILE_URL -o ontop_cli.zip
unzip ontop_cli.zip -d bin/ontop
rm ontop_cli.zip
