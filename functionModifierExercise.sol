// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//function modifiers are used to modify the behaviour of a function.
//ex:to add a prerequisite to a function
//function modifiers are customizable modification for function


contract Owner
{
    //function modifiers

    address owner;
    //when we deploy this contract we want to set the address to the owner(msg.sender)
    constructor() public
    {
        owner = msg.sender;
    }

    //modifier
    //to write a modifier we statically declare the modifier key word and then name it
    //and inside we write our logic and modification
    modifier onlyOwner 
    {
        //coutomizable logic to modify our functions
        require(msg.sender==owner);
        _;  //the underscore continues with function
    }

    modifier cost (uint price)
    {
        ///what is msg.value :Pthe amount in wei being sent with a message to contract
        require(msg.value>=price);
        _;
    }
}
//is is a keywor grabbing inheritance from another contract - owner
contract Register is Owner
{
     mapping(address=>bool) registeredAddress;
     uint price;

     constructor(uint initialPrice) public
     {
         price=initialPrice;
     }
      //function register will set msg.sender (current caller) to true

     function register() public payable cost(price)
     {
         //this logic will modify the outcome
         registeredAddress[msg.sender]=true;
     }
         //the onlyOwner is function modifier that requires 
         //only the owner to be able to change the price
     function changePrice(uint _price) public onlyOwner
     {
         price = _price;
     }
}

/*
1. create a function modifier called cost for our register function that checks to see
that the senders value(hint look up msg.value) requires to be greater than or equal
to the price .second hint : the function modifier should take an argument
*/