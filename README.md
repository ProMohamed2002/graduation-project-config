# graduation-project-config

How To Run On Ubuntu

Inside your project folder:

1️⃣ Build NiFi Image

  docker compose build

2️⃣ Start Everything

  docker compose up -d

3️⃣ Check Running Containers

  docker ps

You should see the following containers running:

zookeeper

kafka

nifi

4️⃣ Open Apache NiFi

Open your browser and go to:

http://localhost:8080/nifi

🔗 How NiFi Connects To Kafka

Inside NiFi:

1. Add Kafka Processor

You can use one of the following processors:

PublishKafkaRecord_2_0 → Send data to Kafka

ConsumeKafkaRecord_2_0 → Read data from Kafka

2. Set Kafka Bootstrap Server

Use:

kafka:9092

⚠️ Important:
Use kafka:9092 NOT localhost:9092

Because Docker containers communicate internally using service names, not localhost.
