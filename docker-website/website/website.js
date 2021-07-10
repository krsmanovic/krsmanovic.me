const express = require('express');
const app = express();
const path = require('path');

app.use(express.static(path.join(__dirname, '/')));

app.listen(2021, () => console.log('Server is listening on port 2021'));
