# HyperFrameOE-Tomcat

This Tomcat docker file is for HyperFrame Open Edition.

## Prerequisites

Docker 19.03.12 (Workspace version, recommended)

## Requirements

#### 1) OS: Debian GNU/Linux 10 (Base OS of openjdk:8 in dockerhub)
#### 2) JDK: OpenJDK 8 (build number 265) 
#### 3) Tomcat: 9.0.30

### Directory layout                                                         

```bash                                                                             
${pwd}                                                                       
|- release-image                                             # image folder                                                    
|   |- Dockerfile                                            # Dockerfile versions (v20.3, v20.4, etc.)
|- usage                                                     # usage folder                                                    
|   |- conf                                                  # Configuration folders
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
|   |- webapps                                               # Web applications that are basically provided by Tomcat binary files.
|   |   |   |- ROOT                                          # Directories in webapps directory
|   |   |   |- docs                                          # Directories in webapps directory
|   |   |   |- examples                                      # Directories in webapps directory
|   |   |   |- host-namager                                  # Directories in webapps directory
|   |   |   |- manager                                       # Directories in webapps directory
|- README.md    
|- apache-tomcat-latest.tar.gz
```              

## Installation Steps:

### You can choose one of the following two installation methods.

### Method 1. Using Dockerfile and binary downloaded from GitHub

#### 1. Go to the following site: https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat.

#### 2. Download the Dockerfile and binary.

#### 3. To change the configuration, modify files under the conf directory.

#### 4. Place the Dockerfile and start.sh files and the conf, license, and ssl directories in the same path.

#### 5. Build a Docker Image.
```bash
$ docker build -t <create image_name>:<image_version> .
```

#### 6. Generate a Container from the Image.
```bash
$ docker run -d -p 8080:8080 <image_name>:<image_version>
```




### Method 2. Using Image of Docker Hub

#### 1. Search for the Image.
- It can be searched from Docker Hub (https://hub.docker.com/repository/docker/tmaxsoftofficial/hyperframeoe-tomcat) or with the following docker search command.
```bash 
$ docker search hyperframeoe-tomcat
```

#### 2. Pull the Image.
```bash
$ docker pull tmaxsoftofficial/hyperframeoe-tomcat:latest
```

#### 3. Build a Docker Image.
```bash
$ docker build -t tmaxsoftofficial/hyperframeoe-tomcat:latest .
```

#### 4. Generate a Container from the Image.
```bash
$ docker run -d -p 8080:8080 tmaxsoftofficial/hyperframeoe-tomcat:latest
```



## License

The license is contained in apache-tomcat-latest.tar.gz


## Version History

[HyperFrame OE, Tomcat 9.0.30](https://github.com/TmaxSoftOfficial/HyperFrameOE-Tomcat/blob/master/release-image/Dockerfile "dockerfile link") (latest)

## HyperFrameOE Service Level

[HyperFrameOE Service Level](https://github.com/TmaxSoftOfficial/HyperFrameOE-About/blob/master/ServiceLevel.md)

