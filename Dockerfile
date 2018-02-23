#FROM wy/centos:1.0
FROM 10.0.0.242:5000/java:1.8
LABEL author=wy

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app.jar"]
# CMD java -version
# ARG JAR_FILE 
# COPY target/${JAR_FILE} /usr/local
# EXPOSE 8080
# CMD java -jar /usr/local/${JAR_FILE}


# COPY jdk-8u161-linux-x64.rpm /tmp
# RUN rpm -ivh /tmp/jdk-8u161-linux-x64.rpm && rm -rf /tmp/jdk-8u161-linux-x64.rpm