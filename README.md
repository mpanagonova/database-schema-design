# Database Schema Design

Relational database schema design practice with tables, keys, constraints, and sample data.

## What’s included
- `schema.sql` — tables, primary keys, foreign keys, constraints
- `sample-data.sql` — sample inserts
- `queries.sql` — example queries (joins, aggregations)

## Technologies
- SQL
- PostgreSQL
- Docker (optional)

## Run locally

Start the PostgreSQL container:

docker compose up -d

Create the schema:

docker exec -i db_schema_design psql -U admin -d testdb < schema.sql

Insert sample data:

docker exec -i db_schema_design psql -U admin -d testdb < sample-data.sql

Run example queries:

docker exec -i db_schema_design psql -U admin -d testdb < queries.sql
