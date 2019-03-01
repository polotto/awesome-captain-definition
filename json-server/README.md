# JSON Server - REST API with zero coding for mock

## App creation
You don't need check the option `Has Persistent Data` when you will create the new app.

## Environment variables
None.

## Volume mapping
None.

## Create your json
Just edit the file db.json and add the that will be used (for more info https://github.com/typicode/json-server)

## Build the project
* Run the command in the root: `npm install -g json-server`
* Start the server: `json-server --watch db.json`
* Open the url http://localhost:3000/ to see your application.

## Nginx configuration
You don't need any configuration because Captain Duck Duck has support to any Node.js running in the `Port 3000`.