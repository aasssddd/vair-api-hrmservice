# Dockerfile
FROM centos:centos6
RUN yum install -y epel-release
RUN yum install -y nodejs npm
RUN npm install -g coffee-script
COPY . hrmService
WORKDIR hrmService
CMD npm start