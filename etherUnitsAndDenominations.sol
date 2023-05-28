// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnEtherUnits
{
    //ether units
    //etherum is blockchain and ether is the currency for etherum
    function test() public
    {
        //wei is the smallest denomination of ether
        assert(1000000000000000000 wei==1 ether); //10^18 wei = 1eth
        assert(1 wei ==1); //1 wei =1
        assert(1 ether==1e18);
    }
}    