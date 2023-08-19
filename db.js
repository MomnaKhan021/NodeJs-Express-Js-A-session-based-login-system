const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  
  host: 'localhost', // Change this if your database is hosted elsewhere
  user: 'root',
  password: '',
  database: 'loginnodejs',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

module.exports = pool;
