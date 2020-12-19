const mysql = require('mysql')

let con = mysql.createConnection({
    host: "",
    user: "",
    password: "",
    database: ""
})

module.exports = con