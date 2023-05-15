// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract operator
{
      function calculator1() public view returns(uint)
      {
          uint a=5;
          uint b =9;  //athematic operation
          return a+b;
      }

       function calculator2() public view returns(uint)
      {
          uint a=5;
          uint b =9;  //remainder  operation
          return a%b;
      }

    

}

contract logicalOperator
{
    uint a =4;
    uint b=5;

    function logic()public view returns(uint)
    {
        uint result=0;
        if(a<b && a==4)
        {
            result=a+b;
        }
        return result;
    }

    function logic1() public view returns(uint)
    {
        uint result=0;
        uint a=17;
        uint b=32;
        if(b>a && a!=b)
        {
        result=a*b;
        uint newresult = result/b;
        return newresult;
        }
    }
}

contract assignmentOperator
{
    uint b =4;
    uint  a=3;
    function asign()public view returns(uint)
    {
        uint c=2;
        return c=b;

        //return c+c+b;
        //return c=c+c+b;
        //return c+=c+b;
    }

   

}

contract finalExercise
{
    uint a=300;
    uint b=12;
    uint f=47;
     function finalOperations()public view returns(uint)
    {
        uint d=23;
        if(a>=b && b<f)
        {
        return d=d*d-b;
        }
        else
        {
         return d;
        } 
    } 

   
}

/* operator in a programming language is a symbol that tell compiler or
intepreter to perform specefic mathematical,relational or logical operation
 and produce final result. */
 //Arthematic Operators


 //operands :variables

 //operations :signs