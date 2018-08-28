# Gogs on captain (https://gogs.io/)

## App creation
You need check the option `Has Persistent Data` when you will create the new app for the Gogs.

## Environment variables
None

## Volume mapping
All that volumes need be configurated in the Captatain Duck Duck web interface. The following volume mapping is necessary to persist all the data generate by the Gogs.

* Path in App: /data - Label: data-git

## Nginx configuration
The Gogs need run in the PORT 3000, if you want to redirect the 80 port to 3000 when the user call your URL, change this line `set $upstream http://<%-s.localDomain%>;` to `set $upstream http://<%-s.localDomain%>:3000;` inside the Nginx configuration file.

## First configuration
I recommend configure to use SQLite database. That avoid you create a new app for the database server.
