# API umbrella on captain (https://apiumbrella.io/)

## App creation
You need check the option `Has Persistent Data` when you will create the new app for the Api Umbrella.

## Environment variables
none.

## Volume mapping
All that volumes need be configurated in the Captatain Duck Duck web interface. The following volume mapping is necessary to persist all the data generate by the Api Umbrella.

* Path in App: /etc/api-umbrella - Label: umbrella
* Path in App: /opt/api-umbrella/var/db - Label: db
* Path in App: /opt/api-umbrella/var/log - Label: log

## Copy files
The captain-definition copy all the files inside the folder `config`, so, you can customize the Api umbrella editing the api-umbrella.yml file (docs: https://api-umbrella.readthedocs.io/en/latest/server/admin-auth.html?highlight=api-umbrella.yml).