# https://github.com/NREL/api-umbrella/blob/master/docker/Dockerfile
FROM nrel/api-umbrella

# Add your custom configurations
ADD ./config /etc/api-umbrella

# If you have some previous data locally, uncomment the following lines
# ADD ./db /opt/api-umbrella/var/db 
# ADD ./log /opt/api-umbrella/var/log

# Expose HTTP and HTTPS ports
EXPOSE 80 443