FROM tomcat:8.5-jdk8-corretto
RUN yum check-update && yum install git -y && yum install install maven -y
RUN mkdir /opt/app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /opt/app
RUN mvn clean package --file /opt/app/pom.xml
RUN cp /opt/app/target/hello-1.0.war /usr/local/tomcat/webapps