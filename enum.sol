// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract enumslearn
{
     enum frenchFriesSize {large,medium,small}
     frenchFriesSize choice;
     frenchFriesSize constant defaultchoice = frenchFriesSize.medium;

     function setSmall()public 
     {
         choice=frenchFriesSize.small;
     }

     function getChoice()public view returns(frenchFriesSize)
     {
          return choice;
     }

     function defaultChoice() public view returns(uint)
     {
         return uint (defaultchoice);
     }
}

//enum restrics a variable to have only a few predefined values.this value in this enumurated are called enums
//with the use of enums you can reduce number of bugs in your code

contract exercise
{
    enum shirtColor {red,white,blue}
    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.blue;

    function setWhite()public
    {
        choice=shirtColor.white;
    }

    function getShirtColor() public view returns(shirtColor)
    {
        return choice;
    }

    function defaultchoice() public view returns(uint)
    {
        return uint(defaultChoice);
    }
}