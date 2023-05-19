// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnStrings
{
    string greeting = 'Good Morning!'; //goodmorning is string literal and greeting is name of string
    

    function sayHello()public view returns(string memory)
    {
        return greeting;
    }

    function chnageGreeting(string memory _change)public 
    {
        greeting=_change;
    }

    //access to character

    function getchar()public view returns(uint)
    {
        // return greeting.length; //string in solidity is too expensive so it dont works
        //covert string into bytes and return length of string
        //bytes are the basic measurement in computer processing
        
         bytes memory stringToBytes=bytes(greeting);
         return stringToBytes.length;

         //watchout for weird character
         //  '\' backspace will escape(skip) a character and \n skips line 
         

    }

    string favouriteColor = 'blue';

    function favcolor()public view returns(string memory)
    {
        return favouriteColor;
    }
    
    function chnageFavColor(string memory _newcolor) public 
    {
       favouriteColor = _newcolor;
        
    }

    function strlength() public view returns(uint)
    {
        bytes memory lengths= bytes(favouriteColor);
        return lengths.length;


    }

}