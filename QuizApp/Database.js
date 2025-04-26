"use strict";

let mysql = require("mysql2");
let Database = {};

Database.configure = function() {
  let connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
  });
  
  connection.connect();
  return connection;
};

Database.login = function(loginDetails, done) {
  let connection = this.configure();
  let query = "select * from users where username='" +
    loginDetails.un +
    "' && password='" +
    loginDetails.pw +
    "'";
  connection.query(query, function(err, rows) {
    if (err) throw err;
    connection.end();
    if (rows[0]) {
      done(err, rows[0]);
    } else {
      done(err, null);
    }
  });
};

Database.register = function(regDetails, done) {
  let connection = this.configure();
  connection.query(
    "select * from users where username=?",
    [regDetails.un],
    function(err, rows) {
      if (err) throw err;
      if (!rows[0]) {
        let query = "insert into users (firstname,lastname,username,password) values(?,?,?,?)";
        connection.query(
          query,
          [regDetails.first, regDetails.last, regDetails.un, regDetails.pw],
          function() {
            connection.end();
          }
        );
        done("success");
      } else {
        done(null);
      }
    }
  );
};

Database.questionsFromDB = function(category, done) {
  let connection = this.configure();
  category = category.toLowerCase();
  connection.query(
    "select question,option1,option2,option3,option4 from questions where category=? ORDER BY RAND() LIMIT 10",
    [category],
    function(err, rows) {
      if (err) throw err;
      connection.end();
      let qaSet = { quizlist: rows };
      done(qaSet);
    }
  );
};

Database.scoreupdate = function(scoreSet) {
  let connection = this.configure();
  connection.query(
    "select fname,score from userscores where fname=?",
    [scoreSet[0]],
    function(err, rows) {
      if (err) throw err;
      if (rows[0] && rows[0].score < scoreSet[1]) {
        connection.query(
          "update userscores set score=? where fname=?",
          [scoreSet[1], scoreSet[0]],
          function() {
            connection.end();
          }
        );
      } else if (!rows[0]) {
        connection.query(
          "insert into userscores (fname,noofquestions,score) values(?,?,?)",
          [scoreSet[0], 10, scoreSet[1]],
          function() {
            connection.end();
          }
        );
      }
      return;
    }
  );
};

Database.getScores = function(done) {
  let connection = this.configure();
  connection.query(
    "SELECT fname,score from userscores order by score desc",
    function(err, rows) {
      if (err) throw err;
      connection.end();
      done(rows);
    }
  );
};

module.exports = Database;

