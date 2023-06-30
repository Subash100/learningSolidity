// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
/*
Exercise:
1.create a contract oracle with an address datatype called admin and public integer called rand
2.create a constructor and set the admin to the current caller.
3.write a function which takes the input of an integer and sets the state variable rand to that integer.
4.require that the current caller must equal the admin.
5.set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract
6.write a constructor in the GenerateRandomNumber contract which sets the oracle to a deployment address of the oracle
7.Modify the hash return so that the miners lesson control manipulation to te random generation
8.sucessfull deploy and test the results.
*/



//oracle dynamic feeds (databases live feeding...can have muliple oracles)
//oracles are dynamically changing outside data tha we fedd into smarts contract

//oracle is a database management system is not only used for storing the data but to effectively
//manage....it also provides high performance,authorized access and failure recovery features

contract Oracle
{
    address admin;
    uint public rand;
    
    constructor() public
    {
        admin=msg.sender;
    }

    function FeedRand(uint x) public     //if external internally you cant access
    {   
        require(msg.sender == admin);
        rand=x;
    }
    

}

contract GenerateRandomNumber
{   
    Oracle oracle;

    constructor(address oracleAddress)
    {
         oracle=Oracle(oracleAddress);
    }
    //build a random number generator which takes an input range and uses cryptographic hashing
    //modulo (%) - so by computing against the remainder we will be able to produce random number within a range
    //cryptographic hashing

    function randMod(uint range) external view returns(uint)
    {
        //grab information from blockchain randomly to generate random numbers - we need something dynamically changing
        //abi.encodePacked concatenates argument nicely
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp,block.difficulty,msg.sender))) % range;
    }
}