# Dockerfile to create a docker image
# Base image
FROM tomcat:8.0

# Add war package to the image
ADD Hibernate_servlet/. /root/Hibernate_servlet

ADD run.sh /run.sh

RUN chmod +x /run.sh

# Expose the container port
EXPOSE 8080

CMD ["/run.sh"]
