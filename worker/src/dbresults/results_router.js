const express = require('express')
const router = express.Router()

const mysql = require('../util/save_db')

let db_query = (req, res, query) => {
    mysql.query(query, function(e, r) {
        if(e)
            res.status(500).send(e)
        else
            res.status(200).send(r)
    })
}

router.get("/features", (req, res) => {
    db_query(req, res, "SELECT * FROM `mydb`.`test_feature`")
})

router.get("/results", (req, res) => {
    db_query(req, res, "SELECT * FROM `mydb`.`executions_status`")
})

module.exports = router