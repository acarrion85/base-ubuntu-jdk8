FROM ubuntu:16.04

USER ROOT
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get install -y wget && \
	apt-get install -y git && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;
	
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

USER 1001
