# hyperframe-tomcat : version : lastest
FROM hyperframe-tomcat

WORKDIR $CATALINA_HOME

# 4) copy user's configuration/apps to image
COPY ./conf ./conf
COPY ./webapps ./webapps

CMD ["catalina.sh", "run"]


