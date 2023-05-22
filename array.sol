// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnArrays
{
    //aaray is data structure that stores fixed sized sequential common type of data
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSizeArray;

    //push() method add one or more element at end of array and gives new length

    function push(uint number) public
    {
        myArray.push(number);
    }
    //pop() method removes element from array
    function pop() public 
    {
            myArray.pop();
    }

    function lengthOfArray() public view returns(uint)
    {
        return myArray.length;
    }

    //delete element of array--.only deletes the value and becomes zero doesnot change length

    function remove(uint i) public
    {
        delete myArray[i];
    }

}

contract Exercise
{
    uint[] public changeArray;

   function removeElement(uint i) public
   {
       changeArray[i]=changeArray[changeArray.length-1];
       changeArray.pop();
   }

   function test()public
   {
      /* changeArray.push(1);
       changeArray.push(2);
       changeArray.push(3);
       changeArray.push(4); */

       for(uint i=1;i<=4;i++)
       {
           changeArray.push(i);
       }
   }

   function getChangeArray() public view returns(uint[] memory)
   {
       return changeArray;
   }
}