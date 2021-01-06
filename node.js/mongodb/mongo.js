/**
* Connecting to MongoDB with Mongoose
*/
const mongoose = require('mongoose');
// simple connection string
// mongoose.connect('mongodb://localhost/test');
mongoose.connect('mongodb://localhost/test', {useNewUrlParser: true});

// using authentication
// mongoose.connect('mongodb://username:password@host/collection')
mongoose.connection.on('open', function() {
console.log('huzzah! connection open');
});
mongoose.connection.on('connecting', function() {
console.log('connecting');
});
mongoose.connection.on('connected', function() {
console.log('connected');
});
mongoose.connection.on('reconnected', function() {
console.log('reconnected');
});
mongoose.connection.on('disconnecting', function() {
console.log('disconnecting');
});
mongoose.connection.on('disconnected', function() {
console.log('disconnected');
});
mongoose.connection.on('error', function(error) {
console.log('error', error);
});
mongoose.connection.on('close', function() {
console.log('connection closed');
});
