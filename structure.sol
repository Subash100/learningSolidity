// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnStructs
{
   struct movie
   {
      string title;
      string director;
      uint movie_id; 
   }
     movie m1;
    
   function setMovie()public
   {
      m1= movie('blade runner','scott',1);
   }
   function getMovie()public view returns(uint)
   {
       return m1.movie_id;
   }

    movie m2;
   function setMovie1() public
   {
       m2=movie('ranger','power',34);
   }

   function getMovie2() public view returns(uint)
   {
       return m2.movie_id;
   }

   movie comedy;

   function steMovie3() public
   {
       comedy=movie('herapheri','priya darshan',23);
   }

   function getMovie3() public view returns(uint)
   {
       return comedy.movie_id;
   }
}

//types to represent the records