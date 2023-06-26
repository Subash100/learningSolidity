// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


/*
define fallback functions:
1.cannot have name (anonymous)
2.does not take any inputs
3.does not return any ouputs
4.must be declared as external

why use it? when you call functions that doesnot exist - or send ether to a contract by send ,transfer or call
statement:send and transfer method receives 2300 gas but call method receives more(all of the gas)
*/
contract FallBack
{
    event Log(uint gas);
    fallback() external payable
    {
        //not recommended to write much code here - because the function will fail if it uses too much gas
        //invoke send and transfer method : we get 2300 gas which is enough to emit a log
        //invoke call method: we get all the gas
        //special solidity function gasleft returns how much gas is left
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint)
    {
        //return the stored balance of the contract
        return address(this).balance;
    }
}
//new contract will send ether to fall back contract which will trigger fallback function

contract SendToFallBack
{
     function transferToFallBack(address payable _to)public payable
     {
        //send ether with transfer mehod
        //automatically transfer will transfer 2300 gas amount
      _to.transfer(msg.value);
     }

     function CallFallBack(address payable _to) public payable
     {
         //send ether with call method 
         (bool sent,)=_to.call{value:msg.value}('');
         require(sent,'failed to sent');
     }
}