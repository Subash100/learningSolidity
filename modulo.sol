// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract loopContract
{   
    //two number divisible by eachother & multiple of eachother
    function checkMultiples(uint _num,uint _nums) public view returns(bool)
    {
        //mudulo operator=% the remainder value of r from integers
        if(_num%_nums==0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}