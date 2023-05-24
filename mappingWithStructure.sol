// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnMapping
{
    struct movie
    {
        string title;
        string director;
    }

    mapping(uint=>movie) public myMovie;

    function addMovie(uint _key,string memory _title,string memory _director) public
    {
        myMovie[_key]=movie(_title,_director); 
    }

  
}