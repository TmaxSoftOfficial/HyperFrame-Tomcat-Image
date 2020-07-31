# HyperFrameOE-Tomcat

This is a group of Tomcat Docker files with versions for HyperFrame Open Edition.

### Prerequisites

Docker 19.03.12 (This is a workspace's version, other versions might be compatiable with this.)

### Set up Info

1) OS : CentOS 7
2) JDK : Openjdk 8 (build number 252) 
3) Tomcat : Tomcat 9.0.30

### Directory layout                                                         

```bash                                                                             
${pwd}                                                                       
|- release-image                                     #                                                     
|   |- Dockerfile                                        # Dockerfile for base tomcat image created using openjdk:8 in Dockerhub
|- usage                                             #                                                     
|   |- conf                                              # Tomcat server configuration directory
|   |   |- catalina.policy                                   # File to set Tomcat's security policy permissions
|   |   |- catalina.properties                               # Contains shared definitions such as servers, shared loaders, and JARs that are searched when the server starts
|   |   |- context.xml                                       # Load the contents of this file when running the application
|   |   |- jaspic-providers.xml                              # Define how to provide user authentication
|   |   |- jaspic-providers.xsd                              # XSD file for jaspic-providers.xml
|   |   |- logging.properties                                # Define logging properties of Tomcat instance.
|   |   |- server.xml                                        # Include important imformation such as IP address, virtual host and context path etc
|   |   |- tomcat-users.xml                                  # A file used for authentication and approval to a definition based on a role
|   |   |- tomcat-users.xsd                                  # XSD file for tomcat-users.xml
|   |   |- web.xml                                           # Define the default values ​​for all applications when the Tomcat instance is started
|   |- webapps                                           # Web applications that are basically provided by Tomcat binary files.
|   |   |- <...>                                             # Directories in webapps directory
|   |- Dockerfile                                        # Dockerfile for user desired setting created using base tomcat image above                                
|- README.md                                                   
```              

### Installing

#### 1. Download the release-image, usage directory.

#### 2. Build an 'Dockerfile' in release-image directory to make a base tomcat image.

```bash
$ docker build -t <create image_name_1>:<image_version_1> .
```

#### 3. You must modify contents of the 'Dockerfile' in usage directory to use the base tomcat image.


    FROM <something>:<something> -> FROM <image_name_1>:<image_version_1>


#### 4. If you want to modify server configuration or web application configuration, change files in usage/conf/, usage/webapps directory.

#### 5. Place 'Dockerfile' of usage directory, 'conf', 'webapps' directory in the same path.

#### 6. Build an 'Dockerfile' in usage directory to make a user setting image.

```bash
$ docker build -t <create image_name_2>:<image_version_2> .
```

#### 7. Generate a container using the image created in #6.

```bash
$ docker run -d -p 8080:8080 <image_name_2>:<image_version_2>
```

### License

This project is licensed under the Apache-2.0
