# SpringBootAdminConsul

This Docker image provides a simple admin interface to administrate Spring Boot applications. It provides the following features for registered SpringBoot application into a Consul cluster.

* Show health status
* JVM & memory metrics
* Counter & gauge metrics
* Datasource metrics
* Cache metrics
* Show build-info number
* Follow and download logfile
* View jvm system- & environment-properties
* Support for Spring Cloud's postable /env- &/refresh-endpoint
* Easy loglevel management (currently for Logback only)
* Interact with JMX-beans
* View thread dump
* View traces
* Hystrix-Dashboard integration
* Download heapdump
* Notification on status change (via mail, Slack, Hipchat, ...)
* Event journal of status changes (non persistent)

More info: https://github.com/codecentric/spring-boot-admin

## How to build

1.- Maven:
```
$mvn package
```

2.- Build docker image:

```
$docker build -t josansaiz/simplespringbootdemo .
```

## Basic Usage

To start the web application:

```
$docker run -d -p 8080:8080 -e CONSUL_HOST=192.168.1.1 -e CONSUL_PORT=8500 josansaiz/springbootadminconsul
```

* CONSUL_HOST: Consul host IP address
* CONSUL_PORT: Consul http listen port

You'll then be able to connect to the SpringBootAdminConsul web UI to confirm it's alive:

http://DOCKERHOST:8080/


