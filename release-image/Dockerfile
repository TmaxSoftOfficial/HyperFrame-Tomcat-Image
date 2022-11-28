# hyperframeoe-tomcat : version : lastest
FROM openjdk:8
# ref ) https://hub.docker.com/_/openjdk

# 1) LATEST Tomcat Binary - tmax build tomcat binary
ENV TOMCAT_BINARY_FILE  apache-tomcat-lastest.tar.gz

# 1-1) 9.0.52 Tomcat Binary - tmax build tomcat binary
# ENV TOMCAT_BINARY_FILE  apache-tomcat-9.0.52.tar.gz

# 2) Set Download Tomcat Binary URL
ENV TOMCAT_BINARY_URL  https://github.com/TmaxSoftOfficial/HyperFrame-Tomcat-Image/raw/master

# 3) Set PATH
ENV CATALINA_HOME   /usr/local/tomcat
ENV CLASSPATH       .:$JAVA_HOME/lib/tools.jar:$CATALINA_HOME/lib/jsp-api.jar:$CATALINA_HOME/lib/servlet-api.jar
ENV PATH            $JAVA_HOME/bin:$CATALINA_HOME/bin:$PATH

# 4) copy source(jdk, tomcat) to image
RUN wget ${TOMCAT_BINARY_URL}/$TOMCAT_BINARY_FILE -P $CATALINA_HOME/

# 5) extract binary
RUN set -eux; \
    #tomcat binary
    cd $CATALINA_HOME; \
    tar -zxvf $TOMCAT_BINARY_FILE --strip-components=1; \
    rm -rf $TOMCAT_BINARY_FILE; \
    #print version
    sh $CATALINA_HOME/bin/version.sh;

# 6) Set Port
EXPOSE 8080

CMD ["catalina.sh", "run"]


