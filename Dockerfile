FROM docker.elastic.co/logstash/logstash:7.6.1
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN bin/logstash-plugin install logstash-filter-aggregate
RUN bin/logstash-plugin install logstash-integration-jdbc
RUN bin/logstash-plugin install logstash-integration-rabbitmq
RUN bin/logstash-plugin install logstash-integration-kafka
