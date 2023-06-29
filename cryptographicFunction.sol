// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
/*
A cryptographic hash function(CHF) is a mathematical algorithm that maps data of arbitrary size
(often called the "message") to a bit array of a fixed size (the "hash value" , "hash", or "message digest").
It is a one-way function, that is , a function which is practically infeasible to invert or reverse the computation.

solidity provides inbuilt cryptographic function as well . Following are important methods:

keccak256(bytes memory) returns (bytes 32) - computes the keccak-256 hash of the input.

SHA256(bytes memory) returns (bytes 32) - computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes 20)- compute RIPEMD-160 hash of the input.


keccak is a leading hashing function, designed by non-NSA designer. keccak won NIST competition to become the offical SHA3
keccak is a family of cryptographic sponge functions and is designed as an alternative to SHA-256

*/





contract GenerateRandomNumber
{
    //build a random number generator which takes an input range and uses cryptographic hashing
    //modulo (%) - so by computing against the remainder we will be able to produce random number within a range
    //cryptographic hashing

    function randMod(uint range) external view returns(uint)
    {
        //grab information from blockchain randomly to generate random numbers - we need something dynamically changing
        //abi.encodePacked concatenates argument nicely
        return uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,msg.sender))) % range;
    }
}