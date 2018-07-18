var mysql = require("mysql");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "greatsongsdb"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
                   
                    connection.query("select * from songs order by genre", function(err, results) {
                      if (err) throw err;

                      console.log("\n\n===Select songs and sort by genres===\n")
                      console.log(results);

                    });

                    connection.query("select * from songs where artist='adele'", function(err, results) {
                        if (err) throw err;
  
                        console.log("\n\n===Select songs and sort by artist===\n")
                        console.log(results);
  
                      });

                      connection.end();
                    
});

