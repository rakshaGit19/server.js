const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Jenkins Docker Build! This is version 2.');
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
