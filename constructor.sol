// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*1. special functio that initialize state  variable
  2. a contract can have only one constructor
  3.after constructor is executed the final code is uploaded in blockchain
  4.constructor can be either public or internal
  5.an internal constructor marks contract as abstract*/

  contract member
  {
      string name;
      uint age;
      //initilize name and age upon deployment
      constructor (string memory _name, uint _age)public{
          name = _name;
          age=_age;
      }
  }

  contract teacher is member//('rachel',28)
  {    
      constructor(string memory n,uint a ) member(n,a) public {}
       function getName()public view returns(string memory)
       {
           return name;
       }
  }

