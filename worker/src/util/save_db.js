const mysql = require('mysql')

let con = mysql.createConnection({
    host: "automation-database.civ6hzctsdge.us-east-1.rds.amazonaws.com",
    user: "admin",
    password: "12345678",
    database: "mydb"
})

module.exports = con