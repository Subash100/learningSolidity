// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnMapping
{
    //key and value -key can be string uint or bool - value can be anything

    mapping(address=>uint) public myMap;

    function setAddress(address _addr,uint _i) public 
    {
        myMap[_addr]=_i;
    }

    function getAddress(address _addr) public view returns(uint)
    {
        return myMap[_addr];
    }

    function removeAddress(address _addr) public
    {
        delete myMap[_addr];
    }
}

//mapping is a reference type as arrays and structs .following its syntax to declare a mapping type
//mapping allows toyou to save data and key that you specify and then retrive that info later
//si,ilar to struct or an array - it is a reference type
//in solidity you cant iterate through map-you need to store key in array and you cant give size
//get,set and delete a value from mapping