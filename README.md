# Reproducer

Reproducer for https://github.com/ontop/ontop/issues/828

## Install

Downloads DuckDB CLI, DuckDB JDBC Driver, Ontop CLI and unpacks

```
$ ./install.sh
```

## Steps

Activate DuckDB version:

`./activate-duckdb-1.0.0.sh` or `./activate-duckdb-1.1.2.sh`

Build DB:
```
$ rm my.duckdb; ./bin/duckdb/duckdb my.duckdb < load-csv.sql
```

Materialize with ontop:

```
$ rm out.nt; ./bin/ontop/ontop materialize -f ntriples -o out.nt -p my.properties -m mapping.r2rml.ttl
```

## My system

I'm running this on Ubuntu 22.04, using OpendJDK 21

```
$ uname -a
Linux mauna 6.5.0-14-generic #14~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Mon Nov 20 18:15:30 UTC 2 x86_64 x86_64 x86_64 GNU/Linux

$ java --version
openjdk 21.0.4 2024-07-16
OpenJDK Runtime Environment (build 21.0.4+7-Ubuntu-1ubuntu222.04)
OpenJDK 64-Bit Server VM (build 21.0.4+7-Ubuntu-1ubuntu222.04, mixed mode, sharing)
```