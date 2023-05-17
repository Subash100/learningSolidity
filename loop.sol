// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract loopContract
{    //a list of number ranging from 1 to 10
    uint[] public numberList=[1,2,3,4,5,6,7,8,9,10];

    //if we have 4 how many number is multiple
    //a multiple checker in our list 
    function checkMultiples(uint _number) public view returns(uint)
    {
         uint count=0;
           for(uint i=0;i<numberList.length;i++)
           {
                if(numberList[i]%_number==0)
                {
                    count++;
                }
           }
           return count;
    }
}

contract myLoopingPracticeContract
{
    uint[] public longList=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint[] public numberList=[1,4,34,56];

    function evennumber()public view returns(uint)
    {
        uint count=0;
        for(uint i=0;i<longList.length;i++)
        {
            if(longList[i]%2==0)
            {
                count++;
            }
        }
        return count;
    }

    function numberListLoop(uint _number)public view returns(bool)
    {
        bool numberExist=false;
        for(uint i=0;i<numberList.length;i++)
        {
           if(numberList[i]== _number)
           {
               return numberExist=true;
           }
          
        }
    }
}