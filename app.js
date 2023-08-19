const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const csv = require('csv-parser');
const XlsxPopulate = require('xlsx-populate');

const fs = require('fs');





const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(session({
    secret: 'your-secret-key',
    resave: false,
    saveUninitialized: true,
}));


app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public')); // Serve static files (HTML, CSS, etc.) from the "public" directory



///APIs
app.post('/login', (req, res) => {
    // Authenticate user - you will need to implement this
    if (authenticated) {
        req.session.user = { username: 'user123' }; // Store user data in session
        res.json({ message: 'Login successful' });
    } else {
        res.status(401).json({ message: 'Login failed' });
    }
});

app.post('/logout', (req, res) => {
    req.session.destroy();
    res.json({ message: 'Logged out successfully' });
});


//session-keys
app.use(session({
    secret: 'your-secret-key',
    resave: false,
    saveUninitialized: true,
    cookie: { maxAge: 60 * 60 * 1000 } // Set to 1 hour in milliseconds
}));


// Database connection settings
const connection = mysql.createConnection({
    host: 'localhost', // Change this if your database is hosted elsewhere
    user: 'root',
    password: '',
    database: 'loginnodejs'
});

// Connect to the database
connection.connect(err => {
    if (err) {
        console.error('Connection failed:', err);
        return;
    }
    console.log('Connected to the database');
});

// Handle form submissions
app.post('/store-login', (req, res) => {
    const username = req.body.username;
    const password = req.body.password;

    // SQL query to insert login data
    //const sql = `SELECT * FROM login`;
    const sql = 'INSERT INTO login (username, password) VALUES (?, ?)';

    // Execute the query with form data
    connection.query(sql, [username, password], (err, results) => {
        if (err) {
            console.error('Error:', err);
            res.send('Error storing login data.');
        } else {

            //console.log('Login data stored successfully.');
            //res.send('Login data stored successfully.');
        }
    });
});

const port = 4205; // Choose a port number

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});



