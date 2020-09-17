# HyperFrameOE-Tomcat

This Tomcat docker file is for HyperFrame Open Edition.

### Prerequisites

Docker 19.03.12 (Workspace version, recommended)

### Requirements

1) OS: CentOS 7
2) JDK: OpenJDK 8 (build number 252) 
3) Tomcat: 8.5.50

### Directory layout                                                         

```bash                                                                             
${pwd}                                                                       
|- conf                                                  # Configuration files             
|   |- catalina.policy                                   # Configuration file for Tomcat's security policy permissions
|   |- catalina.properties                               # Contains shared definitions such as servers, shared loaders, and JARs that are searched when the server starts|
|   |- context.xml                                       # Loaded when running the application
|   |- jaspic-providers.xml                              # Used for jaspic-providers.xml
|   |- jaspic-providers.xsd                              # XSD file for jaspic-providers.xml
|   |- logging.properties                                # Defines logging properties of Tomcat instance.
|   |- server.xml                                        # Contains important information such as IP address and virtual host and context path
|   |- tomcat-users.xml                                  # Used for authentication and approval according to role-based definitions
|   |- tomcat-users.xsd                                  # XSD file for tomcat-users.xml
|   |- web.xml                                           # Define the default values ​​for all applications when the Tomcat instance is started
|- webapps                                               # Web applications that are basically provided by Tomcat binary files.                                                   
|   |- ROOT                                              # Directories in webapps directory
|   |- docs                                              # Directories in webapps directory
|   |- examples                                          # Directories in webapps directory
|   |- host-namager                                      # Directories in webapps directory
|   |- manager                                           # Directories in webapps directory
|- Dockerfile                                            # Dockerfile for user desired setting created using base tomcat image above          
|- OpenJDK8U-jdk_x64_linux_hotspot_8u252b09.tar.gz
|- README.md                   
|-apache-tomcat-8.5.50.tar.gz
```              

### Installation Steps

#### 1. Download Dockerfile to the Tomcat-8.5 directory.

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

[HyperFrame OE, Tomcat 8.5.50](https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat/blob/8.5.x/Dockerfile "dockerfile link") (latest)

### HyperFrameOE Service Level

[HyperFrameOE Service Level](https://github.com/TmaxSoftOfficial/HyperFrameOE-About/blob/master/ServiceLevel.md)
