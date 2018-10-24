# nautilus-funnels

[![Gitter](https://badges.gitter.im/santanusinha/nautilus-funnels.svg)](https://gitter.im/santanusinha/nautilus-funnels?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A real-time activity funnel system built on elasticsearch

##Running
This project can be run on docker by following the steps:

```
mvn clean package -Pdocker
docker-compose up
```
````
For setting this project in local, run
python generate-events.py --server localhost:8080 --count n
This will ingest data into your elasticsearch server for testing purpose
