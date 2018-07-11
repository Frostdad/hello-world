#!/bin/bash

mkdir target
docker pull jenkins/jenkins
docker pull openjdk:8-jdk-alpine
docker build -t "fetchr" .
docker run --name "fetchr" -d -p 8080:8080 fetchr
echo "Starting up Jenkins" && sleep 45
echo "Running build job, please wait" 
docker exec -ti fetchr sh -c "java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s http://admin:admin@localhost:8080 create-job fetchr < /tmp/job.xml"
docker exec -ti fetchr sh -c "java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s http://admin:admin@localhost:8080 build fetchr" && sleep 210
echo "Done building"
docker cp fetchr:/var/jenkins_home/workspace/fetchr/target/us.fetchr.sample-0.0.1-SNAPSHOT.jar target/.
docker build --file dfile --tag "spring" .
docker run -d -p 5000:8090 spring && sleep 10s
echo "Please check http://localhost:5000 for test app and http://localhost:8080 for jenkins instance"
