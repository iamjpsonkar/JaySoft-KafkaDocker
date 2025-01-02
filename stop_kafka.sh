#!/bin/zsh

# Stop and remove the containers
echo "Stopping Kafka, Zookeeper, and Kafdrop..."
docker-compose down --volumes --remove-orphans

echo "Services stopped and containers removed."
