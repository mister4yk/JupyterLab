#!/bin/bash
chmod -R go+rwx data
docker-compose up -d
sleep 10
docker-compose logs
