#!/bin/sh

# Dockerコンテナをバックグラウンドで起動
docker-compose up -d

# Dockerコンテナが起動するまで待機
echo "Waiting for PostgreSQL to start..."
while ! nc -z localhost 5432; do   
  sleep 1
done
echo "PostgreSQL started"
