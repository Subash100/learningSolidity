// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//view function ensure that they will not modify the state (return values)
//pure function ensure that they not read nor modify the state (return calculations) 

contract MyContract
{
   uint value;
   function setValue(uint _value) external
   {
       value= _value;  //modifies the state value
       //eth send transaction
   }
     
   function getValue() external view returns(uint)
   {
      return value;  //read only function that returns a value
      //eth call
   }

    function getNewValue() external pure returns(uint)
   {
      return 3+3;  //read only function that returns a value
      //eth call
   }

}

contract exercise
{
   uint value;
   
   function multiply() public pure returns(uint)
   {
      return 3*7;
   }

   function valuePlusThree() public view returns(uint)
   {
      
      return value+3;
   }
}