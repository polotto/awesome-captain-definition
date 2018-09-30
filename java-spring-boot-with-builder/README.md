# Java Spring Boot application that builds itself inside a container upon deployment to CDD

## App creation
You don't need check the option `Has Persistent Data` when you will create the new app for the Java.

## Environment variables
Most common variables for a Spring Boot app are `SPRING_PROFILES_ACTIVE`, `SPRING_DATASOURCE_URL`, `SPRING_DATASOURCE_USERNAME` and `SPRING_DATASOURCE_PASSWORD`.

## Volume mapping
None.

## Nginx configuration
This demo runs in port 80, but if you want to run on a different port e.g. 3000, change this line `set $upstream http://<%-s.localDomain%>;` to `set $upstream http://<%-s.localDomain%>:3000;` inside the Nginx configuration for the app in CDD.

## Tips
Useful Java command line options to add to the ENTRYPOINT command in the Dockerfile or captain-definition file are `-Duser.timezone` and `-Xmx`.