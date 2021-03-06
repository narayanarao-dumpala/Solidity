pragma solidity ^0.5.0;

contract Marketplace {
                string public  name;
               uint public productCount = 0;
    mapping(uint => Product) public products;

                

                struct Product {
        uint id;
        string name;
        uint price;
        address payable owner;
        bool purchased;
    }

    event ProductCreated(
         uint id,
        string name,
        uint price,
        address payable owner,
        bool purchased
    );

    constructor() public{
                    name = "resinvision";
                }
    function createProduct(string memory _name, uint _price) public {
        
        // Increment product count
        productCount ++;
        // Create the product
        products[productCount]=Product(productCount,_name,_price,msg.sender,false);
       //Tigger an event
       emit ProductCreated(productCount,_name,_price,msg.sender,false);
    }

            }