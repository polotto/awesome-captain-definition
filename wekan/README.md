# Wekan on captain
## Folder sctructure
* no_env_vars/ : captain-definition and Dockerfile without env var, so, you need configure them manually in the web interface.

## App creation
You *don't* need check the option `Has Persistent Data` when you will create the new app for the Wekan.

## Requisites
* a mongo db server running, the Wekan need that to work.

## Environment variables
For more detail, read the Dockerfile.

### Required environment variables
* ROOT_URL
* PORT
* MONGO_URL

### Optional environment variables
* MAIL_URL
* MAIL_FROM
* WITH_API
* BROWSER_POLICY_ENABLED
* TRUSTED_URL

## Nginx configuration
The Wekan need run with PORT numbers >= 3000, if you want to redirect the 80 port to 3000 when the user call your URL, change this line `set $upstream http://<%-s.localDomain%>;` to `set $upstream http://<%-s.localDomain%>:3000;` inside the Nginx configuration file.