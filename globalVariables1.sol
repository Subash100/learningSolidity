// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LedgerBalance
{
      //create a map of wallets with amounts
      //set up a function that can update amount of the person call the contract - current address -msg.sender
      mapping(address=>uint)  balance;

      function updatesBalance(uint newBalance) public
      {
          balance[msg.sender]=newBalance;
      }
      //create a new contract updated
      //create a public function called updateBalance
      //instanciate the data type contract LedgerBalance to a new variable called ledgerbalance(similar to struct or enum)
     // set the new variable ledgerbalance =  new LedgerBalance() 
     //update the ledgerbalabce to 30
     //deploy both contracts and update the ledger balance by 30 using the updated contract
}

contract updated 
{
    function updateBalance() public
    {
         LedgerBalance ledgerbalance = new LedgerBalance();
         //contact Ledgerbalance is instiansie in ledgerbalance 
         ledgerbalance.updatesBalance(30);
    }
}

//special variables(global variables) are globally available variables and provides information
//about blockchain
//Ex:msg.sender sender of the message (current call),msg.value(uint):number of wei sent with message
//block.timestamp:current block timestamp as seconds since unix epoch, block.number(uint):current block number

contract SimpleStorage
{
    uint storedData;
    

    function set(uint x) public
    {
        //storedData = x;
        //storedData = block.difficulty;
        //storedData=block.timestamp;
        storedData=block.number;
    }

    function get() public view returns(uint)
    {
        return storedData;
    }
}