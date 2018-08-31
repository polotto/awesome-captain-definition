# Web server for static files with Express.js

## App creation
You don't need check the option `Has Persistent Data` when you will create the new app.

## Environment variables
None.

## Volume mapping
None.

## Add the files for your site
Just add anythin that your site need insite the folder /public.

## Build the project
* Run the command in the root: `npm install`
* Start the server: `npm start`
* Open the url http://localhost:3000 to see your application.

*Obs.*: You can customize the port change the file: `config.js`

## Nginx configuration
You don't need any configuration because Captain Duck Duck has support to any Node.js running in the `Port 3000`. The CDD run `npm start` to start the app.