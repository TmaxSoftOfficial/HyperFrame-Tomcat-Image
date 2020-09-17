# HyperFrameOE-Tomcat

This Tomcat docker file is for HyperFrame Open Edition.

### Prerequisites

Docker 19.03.12 (Workspace version, recommended)

### Requirements

1) OS: Debian GNU/Linux 10 (Base OS of openjdk:8 in dockerhub)
2) JDK: OpenJDK 8 (build number 265) 
3) Tomcat: 9.0.30

### Directory layout                                                         

```bash                                                                             
${pwd}                                                                       
|- release-image                                     #                                                     
|   |- Dockerfile                                         # Dockerfile versions (v20.3, v20.4, etc.)
|- usage                                             #                                                     
|   |- conf                                              # Configuration files
|   |   |- catalina.policy                                   # Configuration file for Tomcat's security policy permissions
|   |   |- catalina.properties                               # Contains shared definitions such as servers, shared loaders, and JARs that are searched when the server starts
|   |   |- context.xml                                       # Loaded when running the application
|   |   |- jaspic-providers.xml                              # Used for jaspic-providers.xml
|   |   |- jaspic-providers.xsd                              # XSD file for jaspic-providers.xml
|   |   |- logging.properties                                # Defines logging properties of Tomcat instance.
|   |   |- server.xml                                        # Contains important information such as IP address and virtual host and context path
|   |   |- tomcat-users.xml                                  # Used for authentication and approval according to role-based definitions
|   |   |- tomcat-users.xsd                                  # XSD file for tomcat-users.xml
|   |   |- web.xml                                           # Define the default values ​​for all applications when the Tomcat instance is started
|   |- webapps                                           # Web applications that are basically provided by Tomcat binary files.
|   |   |- <...>                                             # Directories in webapps directory
|   |- Dockerfile                                        # Dockerfile for user desired setting created using base tomcat image above                                
|- README.md                                                   
```              

### Installation Steps

#### 1. Download Dockerfile to the Tomcat-9.0 directory.

#### 2. To change the configuration, modify files under the conf and webapps directories.

#### 3. Place the Dockerfile file and the conf and webapps directories in the same path.

#### 4. Build a Docker Image.

```bash
$ docker build -t <create image_name>:<image_version> .
```

#### 5. Generate a Container from the Image.

```bash
$ docker run -d -p 8080:8080 <image_name>:<image_version>
```

### License

Projects are licensed under the Apache 2.0 license.

### Version History

[HyperFrame OE, Tomcat 9.0.30](https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat/blob/master/release-image/Dockerfile "dockerfile link") (latest)

### HyperFrameOE Service Level

[HyperFrameOE Service Level](https://github.com/TmaxSoftOfficial/HyperFrameOE-About/blob/master/ServiceLevel.md)

