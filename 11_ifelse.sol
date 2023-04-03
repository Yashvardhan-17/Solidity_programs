//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ifelse{
    uint256 public mynum=5;
    string public mystring;

    function get(uint256 _num)public returns(string memory){
        if(_num==5)
        {
            mystring="hey the value is 5";
        }
        else
        {
            mystring="the value is not 5";
        }
    }

}