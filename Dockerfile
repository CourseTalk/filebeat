FROM alpine:3.4

ADD https://download.elastic.co/beats/filebeat/filebeat-1.3.0-x86_64.tar.gz /filebeat.tar.gz

RUN tar -xzf /filebeat.tar.gz -C /filebeat/ && \
    rm -f /filebeat.tar.gz

CMD /filebeat/filebeat

