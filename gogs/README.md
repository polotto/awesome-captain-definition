# Gogs on captain

## Insert 

## Environment variables
None

## Volume mapping
All that volumes need be configurated in the Captatain Duck Duck web interface. The following volume mapping is necessary to persist all the data generate by the Gogs.

* Path in App: /data - Label: data-git


## Nginx configuration
The Wekan need run with PORT numbers >= 3000, if you want to redirect the 80 port to 3000 when the user call your URL, change this line `set $upstream http://<%-s.localDomain%>;` to `set $upstream http://<%-s.localDomain%>:3000;` inside the Nginx configuration file.