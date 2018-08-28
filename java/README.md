# Java Spring Boot .jar file on captain (https://spring.io/guides/gs/spring-boot/)

## App creation
You don't need check the option `Has Persistent Data` when you will create the new app for the Java.

## Environment variables
None.

## Volume mapping
None.

## Nginx configuration
That Spring run in the PORT 3000, if you want to redirect the 80 port to 3000 when the user call your URL, change this line `set $upstream http://<%-s.localDomain%>;` to `set $upstream http://<%-s.localDomain%>:3000;` inside the Nginx configuration file.