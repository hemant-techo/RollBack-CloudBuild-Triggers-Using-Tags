// app.js
const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send(`Hello, World! Version: ${process.env.VERSION || '1.0.0'}`);
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});
