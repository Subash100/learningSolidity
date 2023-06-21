// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/* Destructuring Assignments and solidity tricks

solidity functions can return multiple varibles of different types.
If you only want to keep one variable , then you can declare a variable and then use commas: 

*/

contract DesstructuringFunctions
{
     uint public changeValue;
     string public tom ='Hello';

     function f()public pure returns(uint,bool,string memory)
     {
         return (3 , true, 'goodbye');
     }
    
    function g() public 
    {
        (changeValue,,)= f();
    }
      //exercise  change value of tom 
     function h() public 
    {
        (changeValue,,tom)= f();
    }
}

