export KAFKA_ARCHIVE_URL="https://apache-mirror.rbc.ru/pub/apache/kafka/2.8.0/kafka_2.13-2.8.0.tgz"
export KAFKA_ARCHIVE_NAME="kafka.tgz"
curl ${KAFKA_ARCHIVE_URL} --output ${KAFKA_ARCHIVE_NAME} --silent
tar -xvzf ${KAFKA_ARCHIVE_NAME}
rm ${KAFKA_ARCHIVE_NAME}

sudo dnf install -y java-11-openjdk-devel
java --version
