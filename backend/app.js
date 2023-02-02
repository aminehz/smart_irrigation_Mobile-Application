const express = require('express');
const mongoose = require('mongoose');
const authRoutes=require('./routes/authRoutes');

const app = express();

// middleware
app.use(express.static('public'));
app.use(express.json());
// view engine
app.set('view engine', 'ejs');

// database connection
const dbURI = 'mongodb+srv://amine:amine123@smartirrigation.yp0b9mu.mongodb.net/smartirrigation?retryWrites=true&w=majority';
mongoose.connect(dbURI, { useNewUrlParser: true, useUnifiedTopology: true, useCreateIndex:true })
  .then((result) => app.listen(3000))
  .catch((err) => console.log(err));

// routes

app.use(authRoutes);