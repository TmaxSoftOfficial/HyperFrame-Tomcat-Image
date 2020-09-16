FROM centos:7
# version 20.2

# 0) set up CentOS
#RUN set -eux; \
#    yum update -y; \
#    yum install -y \
#        libxslt-devel \
#        ca-certificates \
#    ; \rm -rf /var/lib/apt/lists/*

# 1) set env (jdk, tomcat)
ENV OPENJDK_FOLDER  OpenJDK8U-jdk_x64_linux_hotspot_8u252b09
ENV JAVA_VERSION    jdk8u252-b09
ENV TOMCAT_VERSION  apache-tomcat-8.5.50
ENV SOURCE_PATH     /usr/local/src

ENV JAVA_HOME       /usr/local/java
ENV JRE_HOME        /usr/local/java
ENV CATALINA_HOME   /usr/local/tomcat
ENV CLASSPATH       .:$JAVA_HOME/lib/tools.jar:$CATALINA_HOME/lib/jsp-api.jar:$CATALINA_HOME/lib/servlet-api.jar

ENV PATH            $JAVA_HOME/bin:$CATALINA_HOME/bin:$PATH

# 2) copy source(jdk, tomcat) to image
#COPY $TOMCAT_VERSION.tar.gz $SOURCE_PATH/
#COPY $OPENJDK_FOLDER.tar.gz $SOURCE_PATH/
RUN yum install -y wget
RUN wget https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat/raw/8.5.x/OpenJDK8U-jdk_x64_linux_hotspot_8u252b09.tar.gz -P $SOURCE_PATH/
RUN wget https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat/raw/8.5.x/apache-tomcat-8.5.50.tar.gz -P $SOURCE_PATH/


# 3) set (jdk, tomcat)symbolic link
RUN set -eux; \
    \
    cd $SOURCE_PATH; \
    #jdk 
    tar -zxvf $OPENJDK_FOLDER.tar.gz; \
    rm -rf $JAVA_VERSION.tar.gz; \
    #tomcat
    tar -zxvf $TOMCAT_VERSION.tar.gz; \
    rm -rf $TOMCAT_VERSION.tar.gz; \
    \
    #symbolick link
    ln -s $SOURCE_PATH/$JAVA_VERSION $JAVA_HOME; \
    ln -s $SOURCE_PATH/$TOMCAT_VERSION $CATALINA_HOME; \
    \
    #print version
    cd $CATALINA_HOME; \
    sh $CATALINA_HOME/bin/version.sh; 
 
WORKDIR $CATALINA_HOME

# 4) copy user's configuration/apps to image
COPY ./conf ./conf
COPY ./webapps ./webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
