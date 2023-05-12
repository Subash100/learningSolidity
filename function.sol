// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnfunctions
{
    
     /* function remoteControlOpen(bool closedDoor) public returns(bool)
      {
        return true;
      } */

      function add() public view returns(uint , string memory)
      {
          uint a=5;
          uint b=6;
          uint c=a+b;
          string memory d = 'sum is 11';
          return (c , d);
          //everything we write in function remain localized
      }
      
      function addNewValue() public view returns(uint)
      {
          uint a=1;
          uint b=3;
          uint c = a+b;
          return c;
      }

      function calculator(uint _a ,uint _b) public view returns(uint)
      {
          uint a = _a;
          uint b = _b;
          uint c = a*b;
          return c;
           /* uint result = _a * _b;
           return result; */
      }
}

//function function_name(parameter list) scope returns(){statements}

//functions:group of code 
//function what creating the action and variables stores imformation
//function ntake input of information and produce outputs
//local variables will superceed state variable
//we dont generally with float in solidity
