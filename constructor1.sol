// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract base
{
   uint data;
   constructor(uint _data) public
   {
       data=_data;
   }

   function getData()public view returns(uint)
   {
       return data;
   }
}

contract derived is base
{   
    constructor(uint _a) base(_a){}
     function getBaseData()public view returns(uint)
   {
       return data;
   }
}