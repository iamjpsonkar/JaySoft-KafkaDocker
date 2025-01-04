
# JaySoft-KafkaDocker

This repository provides a collection of Docker configurations for setting up a local Kafka environment, including Kafka, Zookeeper, and Kafdrop (Kafka UI).

## Getting Started

### Clone the Repository
```bash
git clone https://github.com/iamjpsonkar/JaySoft-KafkaDocker.git
```

### Start the Docker Daemon
Ensure that the Docker daemon is running on your system.

### Start Kafka Setup
1. Navigate to the `JaySoft-KafkaDocker` directory:
   ```bash
   cd JaySoft-KafkaDocker
   ```
2. Run the startup script:
   ```bash
   bash start-kafka.sh
   ```

**Note:**  
If you are using macOS, uncomment the `platform` line in `docker-compose.yaml` before starting.

This will download the necessary Docker images and start the required services.

### Access Kafka UI
Once the services are up, Kafka UI will be available at:
- [Kafka UI](http://localhost:9000)

### Stopping the Services
To stop the Kafka setup and clean up, execute:
```bash
bash stop_kafka.sh
```

## Additional Commands

### Stop and Remove All Running Docker Containers
1. Stop all containers:
   ```bash
   docker stop $(docker ps -aq)
   ```
2. Remove all containers:
   ```bash
   docker rm $(docker ps -aq)
   ```

### View Logs
To follow logs for specific services:
- Zookeeper:
  ```bash
  docker logs -f zookeeper
  ```
- Kafka:
  ```bash
  docker logs -f kafka
  ```
- Kafdrop:
  ```bash
  docker logs -f kafdrop
  ```

### Create a New Topic in Kafka
Replace `<topic-name>` with your desired topic name and run the following command:
```bash
docker exec -it kafka /usr/bin/kafka-topics \
  --create --topic <topic-name> \
  --bootstrap-server localhost:9093 \
  --partitions 1 \
  --replication-factor 1
```
