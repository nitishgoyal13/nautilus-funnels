FROM docker.phonepe.com:5000/pp-ops-xenial:0.1

EXPOSE 17000
EXPOSE 17001
EXPOSE 5701

VOLUME /var/log/nautilus

ADD config/docker/docker.yml dev-config.yml
ADD target/nautilus-funnels*.jar server.jar

CMD sh -c "java -jar -XX:+${GC_ALGO-UseG1GC} -Xms${JAVA_PROCESS_MIN_HEAP-1g} -Xmx${JAVA_PROCESS_MAX_HEAP-1g} server.jar server ${CONFIG_ENV-dev}-config.yml"

