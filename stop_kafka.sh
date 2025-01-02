#!/bin/zsh

# Stop and remove the containers (without deleting volumes)
echo "Stopping Kafka, Zookeeper, and Kafdrop..."
docker-compose down --remove-orphans

echo "Services stopped and containers removed (volumes not deleted)."
