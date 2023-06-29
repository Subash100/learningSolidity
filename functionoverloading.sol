// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
function overloading:

you can have multiple definations for the same function name in the same scope
The defination of the function must differ from each other by the types and/or the number of arguments in the argument list.
you cannot overload function declarations that differ only by return type 
*/
 contract FunctionOverloading
 {
     function x(uint lightswitch, uint wallet) public
     {

     }

     function x(uint wallet) public
     {

     }
 }
/*
Exercise:
create two function with the same name that return the sum of their arguments -
one function which takes two argumnets and other function which takes three arguments.
sucessfully deploy your contract and test the result of overloading

create two other functions which can call each 
*/

contract FunctionOverloading1
{
    function sum(uint a,uint b) public view returns(uint)
    {
        return a+b;
    }

    function sum(uint a, uint b, uint c) public view returns(uint)
    {
        return a+b+c;
    }

    function getsumTwoArgs() public view returns(uint)
    {
        return sum(2,3);
    }

    function getsumThreewoArgs() public view returns(uint)
    {
       return sum(2,3,4);
    }
}