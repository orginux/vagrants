# APACHE KAFKA QUICKSTART
[docs](https://kafka.apache.org/quickstart)

## Commands:
write msg:
```bash
bin/kafka-console-producer.sh --topic registration --bootstrap-server localhost:9092
```

read msg:
```bash
bin/kafka-console-consumer.sh --topic registration --bootstrap-server localhost:9092 --consumer-property auto.offset.reset=earliest --group TEST
```

reset offets:
```bash
bin/kafka-umer-groups.sh --bootstrap-server localhost:9092 --group TEST --reset-offsets --to-earliest --topic registration --execute
```
