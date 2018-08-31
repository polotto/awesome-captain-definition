const express = require('express');
const config = require('./config')
const path = require('path')

const app = express();
const port = config.port;

app.get('/', app.use(express.static(path.join(__dirname+'/public'))));
app.use((req, res, next) => {
    res.redirect('/');
    next();
});

app.listen(port, () =>{ console.log(`Server started at: ${port}`)});