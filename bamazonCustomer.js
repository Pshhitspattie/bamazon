var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "loveya246",
  database: "bamazon"
});


connection.query('Select * from Products', function(err, res){
        if(err) throw err;
        start();

        console.log('Welcome to BAMazon')
  console.log('--------------------------------------')

  for(var i = 0; i<res.length;i++){
    console.log("ID: " + res[i].item_id + " | " + "Product: " + res[i].product_name + " | " + "Department: " + res[i].department_name + " | " + "Price: " + res[i].price + " | " + "QTY: " + res[i].stock_quantity);
    console.log('--------------------------------------------------------------------------------------------------')
  }

    })

function start(){
    inquirer
    .prompt([
        {
        name: "ID",
        type: "input",
        message: "What is the ID of the product you would like to buy?"
        },
        {
            name: "Units",
            type: "input",
            message: "How many units of the product would you like to buy? "
        }

    ])
}
    

