var mysql = require("mysql");
var inquirer=require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "greatbayDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  start();
});

// -- function that ask for user post or bid

function start() {
    inquirer
      .prompt({
        name: "postOrBid",
        type: "rawlist",
        message: "Would you like to [POST] an auction or [BID] on an auction?",
        choices: ["POST", "BID"]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.postOrBid.toUpperCase() === "POST") {
          postAuction();
        }
        else {
          bidAuction();
        }
      });
  }


  function bidAuction() {

    connection.query("SELECT * FROM products", function(err, results) {
        if (err) throw err;
        console.log(results);
  });
}


  funtion postAuction() {

    // inquirer prompt all the details of new products
    inquirer
    .prompt([{
      name: "item",
      type: "input",
      message: "name of product?",
    },    
    {
        name: "bid",
        type: "input",
        message: "starting bid for product?",
    }])
    
    .then(function(answer) {

    connection.query(
        "INSERT INTO products SET ?",
        {
          product: answer.item,
          current_bid: answer.bid,
         
        },
        function(err) {
          if (err) throw err;
          console.log("product added!");

  })


  // needs to validation of price (make sure decimal) , compare bid user to current bid of product 
  //if superior update product price in database if not consolelog user price too low