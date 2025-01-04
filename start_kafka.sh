#!/bin/zsh

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "Docker is not running. Please start Docker first."
    exit 1
fi

# Pull the necessary images
echo "Pulling necessary Docker images..."
docker-compose pull

# Start Kafka, Zookeeper, and the UI app (Kafdrop)
echo "Starting services..."
docker-compose up --build -d

# Wait for services to be ready
echo "Waiting for Kafka and Zookeeper to be ready..."
sleep 15

echo "Kafka, Zookeeper, and Kafdrop are now running."

# Open Kafdrop UI in default browser
echo "Open Kafdrop UI http://localhost:9000"

# echo "Creating kafka topics"
# docker exec -it kafka /usr/bin/kafka-topics --create --topic "test-topic" --bootstrap-server localhost:9093 --partitions 1 --replication-factor 1
