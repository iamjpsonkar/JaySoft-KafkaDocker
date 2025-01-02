#!/bin/zsh

# Stop and remove the containers
echo "Stopping Kafka, Zookeeper, and Kafdrop..."
docker-compose down

echo "Services stopped and containers removed."
