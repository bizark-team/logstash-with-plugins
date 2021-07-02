FROM docker.elastic.co/logstash/logstash:7.6.2
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN bin/logstash-plugin install logstash-filter-aggregate && \
    bin/logstash-plugin install logstash-integration-jdbc && \
    bin/logstash-plugin install logstash-integration-rabbitmq && \
    bin/logstash-plugin install logstash-integration-kafka
