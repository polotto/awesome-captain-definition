# https://github.com/NREL/api-umbrella/blob/master/docker/Dockerfile
FROM node:10

# install strapi
RUN npm install strapi@alpha -g

# create a dir to work with
RUN mkdir /usr/src/api
WORKDIR /usr/src/api

# generate a new strapi project skipping the interactive setup
# setup mongodb as database for the project
RUN strapi new strapi-app --dbclient=mongo

# run the current project created
RUN cd strapi-app
RUN strapi start

# Expose HTTP and HTTPS ports
EXPOSE 1337