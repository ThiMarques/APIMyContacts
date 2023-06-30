const express = require('express');
require('express-async-errors');

const routes = require('./routes');

const app = express();

app.use(express.json());
app.use(routes);
app.use((error, req, res, next) => {
  console.log(error);
  res.sendStatus(500);
}); // Error Handler (Middleware Express) -> Manipulador de erros

// eslint-disable-next-line no-console
app.listen(3000, () => console.log('Server started at http://localhost:3000'));
