// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A
{     

    uint public data=10;
     function x() public  view returns(uint)
     {
         uint c= data+15;
         return c;
     }

    function y() public view returns(uint)
    {
       return data;
    }

     function z() private view returns(uint)
    {
       return data;
    }

         function v() external view returns(uint)
    {
       return data;
    }
}