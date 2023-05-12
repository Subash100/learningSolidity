// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract decisionMaking
{
    uint oranges = 5;

    function validateOranges() public view returns(bool)
    {
        if (oranges==5) //what ever in paranthesis evaluates truth
        {
            return true; //action after the evaluation
        }
        else{
            return false;
        }
    }
}

//conditional statement
//if..else statement fundamental control statement 