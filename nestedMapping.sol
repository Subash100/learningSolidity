// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract nestedMapping
{
    struct movie
    {
        string title;
        string director;
    }

    mapping(uint=>movie) public myMovie;
    mapping(address=>mapping(uint=>movie)) public yourMovie; //nested mocie

    function addMovie(uint _key,string memory _title,string memory _director) public
    {
        myMovie[_key]=movie(_title,_director); 
    }
     function addYourMovie(uint _key,string memory _title,string memory _director) public
    {
        yourMovie[msg.sender][_key]=movie(_title,_director); //nested mapping
        //msg.snder is global variable which captures the adress that is calling contract
    }

    //maps within maps 
    //ex mapping(key => mapping(key1=>value1))
}