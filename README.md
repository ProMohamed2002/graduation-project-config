# graduation-project-config

### NiFi + Kafka + Flink Streaming ETL Stack
    
    This project provides a complete streaming data pipeline using:
    
    Apache NiFi – Data Ingestion / ETL
    
    Apache Kafka – Streaming Platform
    
    Apache Flink – Real-Time Processing
    
    Apache ZooKeeper – Kafka Coordination

        ┌──────────┐
        │   NiFi   │
        │ (ETL)    │
        └─────┬────┘
              │
              ▼
        ┌──────────┐
        │  Kafka   │
        │ (Stream) │
        └─────┬────┘
              │
              ▼
        ┌──────────┐
        │  Flink   │
        │Processing│
        └──────────┘

### Data Flow

    NiFi ingests data (files, APIs, DB, etc.)
    
    NiFi publishes messages to Kafka
    
    Flink consumes Kafka topics
    
    Flink processes data in real-time
    
    Data can be written to a warehouse (MySQL / OLAP system)
### Tech Stack Versions
| Component      | Version |
| -------------- | ------- |
| NiFi           | 1.23.2  |
| Kafka          | 7.5.0   |
| Zookeeper      | 7.5.0   |
| Flink          | 1.18.1  |
| Docker Compose | v2      |

### Prerequisites (Ubuntu)

    Install Docker:
    
    sudo apt update
    sudo apt install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker $USER
### Steps to run
    Step 1 — Build the Custom NiFi Image

    docker compose build
    Step 2 — Start the Entire Stack
    
    docker compose up -d
    
    This will start:
    Zookeeper
    Kafka
    Flink JobManager
    Flink TaskManager
    NiFi
    
    🔍 Step 3 — Verify Running Containers
    
    docker ps
    
    Expected containers:
    
    zookeeper
    kafka
    flink-jobmanager
    flink-taskmanager
    nifi
    
### 🌐 Web Interfaces
    🔹 NiFi UI
    
    http://localhost:8080/nifi
    
    🔹 Flink Dashboard
    
    http://localhost:8082
    
    Kafka and Zookeeper do not provide web UI by default.
    
    🔗 Internal Networking (Important)
    
    All services communicate via Docker internal network.
    
### Use these addresses inside configuration:
    
    Service	Address
    
    Kafka Broker	kafka:9092
    Zookeeper	zookeeper:2181
    Flink JobManager	flink-jobmanager
    
    ⚠️ Do NOT use localhost inside container configurations.
    
    🛑 Stop the Stack
    docker compose down
