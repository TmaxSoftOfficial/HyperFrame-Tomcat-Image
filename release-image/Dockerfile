# hyperframe-tomcat : version : lastest
FROM openjdk:8
# ref ) https://hub.docker.com/_/openjdk

# 1) LATEST Tomcat Binary - tmax build tomcat binary
ENV TOMCAT_BINARY_FILE  apache-tomcat-lastest.tar.gz


#ENV TOMCAT_BINARY_URL  https://github.com/TmaxSoftOfficial/Tomcat/raw/master
ENV TOMCAT_BINARY_URL  http://192.168.13.200/install/hyperframeOE/tomcat/

ENV CATALINA_HOME   /usr/local/tomcat
ENV CLASSPATH       .:$JAVA_HOME/lib/tools.jar:$CATALINA_HOME/lib/jsp-api.jar:$CATALINA_HOME/lib/servlet-api.jar
ENV PATH            $JAVA_HOME/bin:$CATALINA_HOME/bin:$PATH

# 2) copy source(jdk, tomcat) to image
RUN wget ${TOMCAT_BINARY_URL}/$TOMCAT_BINARY_FILE -P $CATALINA_HOME/

# 3) extract binary
RUN set -eux; \
    #tomcat binary
    cd $CATALINA_HOME; \
    tar -zxvf $TOMCAT_BINARY_FILE --strip-components=1; \
    rm -rf $TOMCAT_BINARY_FILE; \
    #print version
    sh $CATALINA_HOME/bin/version.sh;

EXPOSE 8080


